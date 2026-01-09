import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/calendar_event_entity.dart';
import 'package:ssentif_manager_web/features/client/view/state/daily_records_state.dart';
import 'package:ssentif_manager_web/features/client/view/viewmodel/daily_records_view_model.dart';
import 'package:ssentif_manager_web/features/routine/data/model/routine_history_model.dart';
import 'package:ssentif_manager_web/shared/enumtype/client_calendar_event_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/exercise_part.dart';
import 'package:ssentif_manager_web/shared/enumtype/meal_time_type.dart';
import 'diet_detail_dialog.dart';

class DailyRecordsDialog extends ConsumerStatefulWidget {
  final DateTime selectedDate;
  final int clientId;
  final List<CalendarEventEntity> events;

  const DailyRecordsDialog({
    super.key,
    required this.selectedDate,
    required this.clientId,
    required this.events,
  });

  static void show(
    BuildContext context, {
    required DateTime selectedDate,
    required int clientId,
    required List<CalendarEventEntity> events,
  }) {
    showDialog(
      context: context,
      builder: (context) => DailyRecordsDialog(
        selectedDate: selectedDate,
        clientId: clientId,
        events: events,
      ),
    );
  }

  @override
  ConsumerState<DailyRecordsDialog> createState() => _DailyRecordsDialogState();
}

class _DailyRecordsDialogState extends ConsumerState<DailyRecordsDialog> {
  // 스크롤 제어 및 섹션 위치 추적
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _workoutSectionKey = GlobalKey();
  final GlobalKey _dietSectionKey = GlobalKey();
  final GlobalKey _classSectionKey = GlobalKey();

  late final DailyRecordsParams _params;

  @override
  void initState() {
    super.initState();
    _params = DailyRecordsParams(
      selectedDate: widget.selectedDate,
      clientId: widget.clientId,
      events: widget.events,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSection(ClientCalendarEventType type) {
    GlobalKey? targetKey;

    switch (type) {
      case ClientCalendarEventType.workoutEvent:
        targetKey = _workoutSectionKey;
        break;
      case ClientCalendarEventType.dietEvent:
        targetKey = _dietSectionKey;
        break;
      case ClientCalendarEventType.classEvent:
      case ClientCalendarEventType.reservationCompleteEvent:
      case ClientCalendarEventType.classCompleteEvent:
      case ClientCalendarEventType.classRequestEvent:
        targetKey = _classSectionKey;
        break;
      default:
        return;
    }

    if (targetKey.currentContext != null) {
      Scrollable.ensureVisible(
        targetKey.currentContext!,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // 수업 이벤트의 시작 시간 가져오기
  String? _getClassEventStartTime(DailyRecordsState state) {
    // scheduleDetail이 있으면 그 startTime 사용
    if (state.scheduleDetail != null &&
        state.scheduleDetail!.startTime.isNotEmpty) {
      return state.scheduleDetail!.startTime;
    }

    // 없으면 이벤트의 startDateTime 사용
    final classEvent = widget.events.firstWhere(
      (event) {
        return event.eventType == ClientCalendarEventType.classEvent ||
            event.eventType ==
                ClientCalendarEventType.reservationCompleteEvent ||
            event.eventType == ClientCalendarEventType.classCompleteEvent ||
            event.eventType == ClientCalendarEventType.classRequestEvent;
      },
      orElse: () => CalendarEventEntity(
        startDateTime: DateTime(2000),
        endDateTime: DateTime(2000),
      ),
    );

    if (classEvent.startDateTime.year == 2000) {
      return null;
    }

    return DateFormat('HH:mm').format(classEvent.startDateTime);
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        DateFormat('yyyy년 MM월 dd일 EEEE', 'ko_KR').format(widget.selectedDate);

    final state = ref.watch(dailyRecordsViewModelProvider(_params));
    final viewModel = ref.read(dailyRecordsViewModelProvider(_params).notifier);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        width: 600,
        height: 600,
        padding: const EdgeInsets.all(20),
        color: AppColors.backgroundColor,
        child: Column(
          children: [
            // 헤더
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formattedDate,
                  style: SsentifTextStyles.medium20(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    color: AppColors.black,
                    size: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // 탭 버튼 (스크롤에서 제외)
            EventTypeTabButtons(
              selectedType: state.selectedCategory,
              selectTypeListener: (ClientCalendarEventType type) {
                viewModel.updateSelectedCategory(type);
                // 탭 클릭 시 해당 섹션으로 스크롤
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  _scrollToSection(type);
                });
              },
            ),
            const SizedBox(height: 20),
            // 컨텐츠 (스크롤 가능)
            Expanded(
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _buildContent(state),
            ),
          ],
        ),
      ),
    );
  }

  bool _hasClassEvent() {
    return widget.events.any((event) {
      return event.eventType == ClientCalendarEventType.classEvent ||
          event.eventType == ClientCalendarEventType.reservationCompleteEvent ||
          event.eventType == ClientCalendarEventType.classCompleteEvent ||
          event.eventType == ClientCalendarEventType.classRequestEvent;
    });
  }

  Widget _buildContent(DailyRecordsState state) {
    // 모든 섹션을 Column으로 순서대로 표시
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 수업 섹션
          Container(
            key: _classSectionKey,
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '수업',
                  style: SsentifTextStyles.bold18(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: 12),
                if (state.classRecords.isNotEmpty)
                  ...state.classRecords
                      .map((classRecord) => _buildClassItem(classRecord))
                else if (_hasClassEvent())
                  _buildClassReservationMessage(state)
                else
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(40),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.gray4, width: 1),
                    ),
                    child: Text(
                      '기록된 출석 완료 수업이 없어요.',
                      style: SsentifTextStyles.regular16(context).copyWith(
                        color: AppColors.gray2,
                      ),
                    ),
                  ),
              ],
            ),
          ),

          // 개인운동 섹션
          Container(
            key: _workoutSectionKey,
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '개인운동',
                  style: SsentifTextStyles.bold18(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: 12),
                if (state.workoutRecords.isNotEmpty)
                  ...state.workoutRecords
                      .map((workout) => _buildWorkoutItem(workout))
                else
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(40),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.gray4, width: 1),
                    ),
                    child: Text(
                      '기록된 개인운동이 없어요.',
                      style: SsentifTextStyles.regular16(context).copyWith(
                        color: AppColors.gray2,
                      ),
                    ),
                  ),
              ],
            ),
          ),

          // 식단 섹션
          Container(
            key: _dietSectionKey,
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '식단',
                  style: SsentifTextStyles.bold18(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: 12),
                if (state.dietRecord != null)
                  _buildDietItem(state.dietRecord!)
                else
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(40),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.gray4, width: 1),
                    ),
                    child: Text(
                      '기록된 식단이 없어요.',
                      style: SsentifTextStyles.regular16(context).copyWith(
                        color: AppColors.gray2,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWorkoutItem(RoutineHistoryModel workout) {
    final exerciseParts = workout.exercisePartsList
        .map((e) => ExercisePart.findExercisePart(e))
        .whereType<ExercisePart>()
        .toSet();

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.gray4, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 16,
                decoration: BoxDecoration(
                  color: AppColors.modalTextRed,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  workout.routineName.isNotEmpty ? workout.routineName : '개인운동',
                  style: SsentifTextStyles.medium16(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '총 ${workout.routinesExerciseDtos.length}개 종목, ${exerciseParts.length}개 운동 부위',
            style: SsentifTextStyles.bold16(context).copyWith(
              color: AppColors.black,
            ),
          ),
          if (exerciseParts.isNotEmpty) ...[
            const SizedBox(height: 10),
            Text(
              '운동 부위 - ${exerciseParts.map((e) => Intl.message(e.findStringKey())).join(" • ")}',
              style: SsentifTextStyles.medium14(context).copyWith(
                color: AppColors.black,
              ),
            ),
          ],
          if (workout.clientMemo.isNotEmpty) ...[
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '회원 메모',
                    style: SsentifTextStyles.bold12(context).copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    workout.clientMemo,
                    style: SsentifTextStyles.medium12(context).copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
          if (workout.routinesExerciseDtos.isNotEmpty) ...[
            const SizedBox(height: 20),
            ...workout.routinesExerciseDtos.asMap().entries.map((entry) {
              final index = entry.key;
              final exercise = entry.value;
              return Padding(
                padding: EdgeInsets.only(
                    bottom: index < workout.routinesExerciseDtos.length - 1
                        ? 10
                        : 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${index + 1}',
                        style: SsentifTextStyles.medium12(context).copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        exercise.routinesExerciseName,
                        style: SsentifTextStyles.medium14(context).copyWith(
                          color: AppColors.black,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ],
      ),
    );
  }

  Widget _buildDietItem(Map<String, dynamic> diet) {
    final dailyMemo = diet['dailyMemo'] ?? '';
    final dailyFeedback = diet['dailyFeedback'] ?? '';
    final dietDailyResponses =
        diet['dietDailyResponses'] as List<dynamic>? ?? [];

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.gray4, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 16,
                decoration: BoxDecoration(
                  color: AppColors.subColorPurple,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '식단 기록',
                  style: SsentifTextStyles.medium16(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
          if (dailyMemo.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              dailyMemo,
              style: SsentifTextStyles.regular14(context).copyWith(
                color: AppColors.gray2,
              ),
            ),
          ],
          if (dailyFeedback.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              '피드백: $dailyFeedback',
              style: SsentifTextStyles.regular14(context).copyWith(
                color: AppColors.gray2,
              ),
            ),
          ],
          if (dietDailyResponses.isNotEmpty) ...[
            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: dietDailyResponses.map((diet) {
                  return Container(
                    padding: const EdgeInsets.only(right: 17),
                    child: _buildDietThumbnailItem(
                      context,
                      diet,
                      dietDailyResponses,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildDietThumbnailItem(
    BuildContext context,
    Map<String, dynamic> diet,
    List<dynamic> dietDailyResponses,
  ) {
    final mealTimeDto = diet['mealTime'] ?? '';
    final mealTakeTime = diet['time'] ?? '';
    final img = diet['img'] as List<dynamic>? ?? [];
    final dietId = diet['id'] as int?;

    // DTO를 enum으로 변환
    final mealTimeType = MealTimeType.findMealTimeType(mealTimeDto);

    final mealTimeText = mealTimeType != null
        ? Intl.message(mealTimeType.getTextStringKey())
        : mealTimeDto;

    return GestureDetector(
      onTap: () {
        if (dietId != null) {
          // 모든 dietId 수집
          final dietIds = dietDailyResponses
              .map((d) => d['id'] as int?)
              .whereType<int>()
              .toList();

          // DietDetailDialog 표시
          DietDetailDialog.show(
            context,
            clientId: widget.clientId,
            dietIds: dietIds,
            initialDietId: dietId,
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "[$mealTakeTime] $mealTimeText",
            style: SsentifTextStyles.medium14(context).copyWith(
              color: AppColors.black,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: img.isNotEmpty
                    ? Image.network(
                        img[0] as String,
                        width: 133,
                        height: 133,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 133,
                            height: 133,
                            decoration: BoxDecoration(
                              color: AppColors.gray4,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.restaurant,
                                size: 45,
                                color: AppColors.gray2,
                              ),
                            ),
                          );
                        },
                      )
                    : Container(
                        width: 133,
                        height: 133,
                        decoration: BoxDecoration(
                          color: AppColors.gray4,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.restaurant,
                            size: 45,
                            color: AppColors.gray2,
                          ),
                        ),
                      ),
              ),
              if (img.length > 1)
                Container(
                  width: 133,
                  height: 133,
                  decoration: BoxDecoration(
                    color: AppColors.blackAlpha30,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "+ ${img.length}",
                    style: SsentifTextStyles.medium20(context).copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildClassReservationMessage(DailyRecordsState state) {
    final startTime = _getClassEventStartTime(state) ?? '';

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.gray4, width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 16,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              startTime.isNotEmpty
                  ? '[$startTime] 수업이 예약되어 있어요'
                  : '수업이 예약되어 있어요',
              style: SsentifTextStyles.medium16(context).copyWith(
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassItem(RoutineDtoWrapperModel classRecord) {
    final routine = classRecord.routineDto;
    final exerciseParts = routine.exercisePartsList
        .map((e) => ExercisePart.findExercisePart(e))
        .whereType<ExercisePart>()
        .toSet();

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.gray4, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 16,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  routine.routineName.isNotEmpty ? routine.routineName : '수업',
                  style: SsentifTextStyles.medium16(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '총 ${routine.routinesExerciseDtos.length}개 종목, ${exerciseParts.length}개 운동 부위',
            style: SsentifTextStyles.bold16(context).copyWith(
              color: AppColors.black,
            ),
          ),
          if (exerciseParts.isNotEmpty) ...[
            const SizedBox(height: 10),
            Text(
              '운동 부위 - ${exerciseParts.map((e) => Intl.message(e.findStringKey())).join(" • ")}',
              style: SsentifTextStyles.medium14(context).copyWith(
                color: AppColors.black,
              ),
            ),
          ],
          if (routine.exerciseComment.isNotEmpty) ...[
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '루틴 메모',
                    style: SsentifTextStyles.medium12(context).copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    routine.exerciseComment,
                    style: SsentifTextStyles.medium12(context).copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
          if (routine.routinesExerciseDtos.isNotEmpty) ...[
            const SizedBox(height: 20),
            ...routine.routinesExerciseDtos.asMap().entries.map((entry) {
              final index = entry.key;
              final exercise = entry.value;
              return Padding(
                padding: EdgeInsets.only(
                    bottom: index < routine.routinesExerciseDtos.length - 1
                        ? 10
                        : 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${index + 1}',
                        style: SsentifTextStyles.medium10(context).copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        exercise.routinesExerciseName,
                        style: SsentifTextStyles.medium14(context).copyWith(
                          color: AppColors.black,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ],
      ),
    );
  }
}

class EventTypeTabButtons extends StatelessWidget {
  final ClientCalendarEventType selectedType;
  final Function(ClientCalendarEventType type) selectTypeListener;

  const EventTypeTabButtons({
    super.key,
    required this.selectedType,
    required this.selectTypeListener,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildTabButton(
            context,
            backgroundColor: selectedType ==
                        ClientCalendarEventType.classEvent ||
                    selectedType ==
                        ClientCalendarEventType.reservationCompleteEvent ||
                    selectedType ==
                        ClientCalendarEventType.classCompleteEvent ||
                    selectedType == ClientCalendarEventType.classRequestEvent
                ? AppColors.primary
                : AppColors.white,
            text: '수업',
            onClick: () {
              selectTypeListener(ClientCalendarEventType.classEvent);
            },
            selected: selectedType == ClientCalendarEventType.classEvent ||
                selectedType ==
                    ClientCalendarEventType.reservationCompleteEvent ||
                selectedType == ClientCalendarEventType.classCompleteEvent ||
                selectedType == ClientCalendarEventType.classRequestEvent,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildTabButton(
            context,
            backgroundColor:
                selectedType == ClientCalendarEventType.workoutEvent
                    ? AppColors.modalTextRed
                    : AppColors.white,
            text: '개인운동',
            onClick: () {
              selectTypeListener(ClientCalendarEventType.workoutEvent);
            },
            selected: selectedType == ClientCalendarEventType.workoutEvent,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildTabButton(
            context,
            backgroundColor: selectedType == ClientCalendarEventType.dietEvent
                ? AppColors.subColorPurple
                : AppColors.white,
            text: '식단',
            onClick: () {
              selectTypeListener(ClientCalendarEventType.dietEvent);
            },
            selected: selectedType == ClientCalendarEventType.dietEvent,
          ),
        ),
      ],
    );
  }

  Widget _buildTabButton(
    BuildContext context, {
    required Color backgroundColor,
    required String text,
    required VoidCallback onClick,
    required bool selected,
  }) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selected ? Colors.transparent : AppColors.gray4,
            width: 1,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: SsentifTextStyles.medium14(context).copyWith(
            color: selected ? AppColors.white : AppColors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
