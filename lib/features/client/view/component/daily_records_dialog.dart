import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/calendar_event_entity.dart';
import 'package:ssentif_manager_web/features/routine/data/model/routine_history_model.dart';
import 'package:ssentif_manager_web/shared/enumtype/client_calendar_event_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/exercise_part.dart';
import 'package:ssentif_manager_web/shared/enumtype/meal_time_type.dart';

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
  ClientCalendarEventType _selectedCategory =
      ClientCalendarEventType.classEvent;

  List<RoutineHistoryModel> _workoutRecords = [];
  Map<String, dynamic>? _dietRecord;
  List<RoutineDtoWrapperModel> _classRecords = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });

    final dateString = widget.selectedDate.formatYMD();
    final apiService = ref.read(apiServiceProvider);

    // 각 API 호출을 개별적으로 처리 (하나가 실패해도 나머지는 표시)
    // 개인운동 조회
    try {
      final workoutResponse = await apiService.getDailyWorkoutRecords(
        date: dateString,
        clientId: widget.clientId,
      );
      setState(() {
        _workoutRecords = workoutResponse.workoutResponses
            .map((wrapper) => wrapper.routineDto)
            .where((routine) =>
                routine.routineId != -1 || routine.routineName.isNotEmpty)
            .toList();
      });
    } catch (e) {
      // 에러 발생 시 빈 배열로 설정하고 계속 진행
      setState(() {
        _workoutRecords = [];
      });
    }

    // 식단 조회
    try {
      final dietData = await apiService.getDailyDietList(
        date: dateString,
        clientId: widget.clientId,
      );
      setState(() {
        _dietRecord = dietData;
      });
    } catch (e) {
      setState(() {
        _dietRecord = null;
      });
    }

    // 수업 조회
    try {
      final classResponse = await apiService.getDailyClassRecords(
        classDate: dateString,
        clientId: widget.clientId,
      );
      setState(() {
        _classRecords = classResponse.classInfoDetailOfDateList;
      });
    } catch (e) {
      setState(() {
        _classRecords = [];
      });
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        DateFormat('yyyy년 MM월 dd일 EEEE', 'ko_KR').format(widget.selectedDate);

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
                  style: SsentifTextStyles.medium20.copyWith(
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
            // 탭 버튼
            EventTypeTabButtons(
              selectedType: _selectedCategory,
              selectTypeListener: (ClientCalendarEventType type) {
                setState(() {
                  _selectedCategory = type;
                });
              },
            ),
            const SizedBox(height: 20),
            // 컨텐츠
            Expanded(
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _buildContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    String emptyMessage = '';
    int itemCount = 0;

    switch (_selectedCategory) {
      case ClientCalendarEventType.workoutEvent:
        itemCount = _workoutRecords.length;
        emptyMessage = '개인운동 기록이 없습니다';
        break;
      case ClientCalendarEventType.dietEvent:
        itemCount = _dietRecord != null ? 1 : 0;
        emptyMessage = '식단 기록이 없습니다';
        break;
      case ClientCalendarEventType.classEvent:
      case ClientCalendarEventType.reservationCompleteEvent:
      case ClientCalendarEventType.classCompleteEvent:
      case ClientCalendarEventType.classRequestEvent:
        itemCount = _classRecords.length;
        emptyMessage = '수업 기록이 없습니다';
        break;
      default:
        itemCount = 0;
    }

    if (itemCount == 0) {
      return Center(
        child: Text(
          emptyMessage,
          style: SsentifTextStyles.regular16.copyWith(
            color: AppColors.gray2,
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        switch (_selectedCategory) {
          case ClientCalendarEventType.workoutEvent:
            return _buildWorkoutItem(_workoutRecords[index]);
          case ClientCalendarEventType.dietEvent:
            return _buildDietItem(_dietRecord!);
          case ClientCalendarEventType.classEvent:
          case ClientCalendarEventType.reservationCompleteEvent:
          case ClientCalendarEventType.classCompleteEvent:
          case ClientCalendarEventType.classRequestEvent:
            return _buildClassItem(_classRecords[index]);
          default:
            return const SizedBox.shrink();
        }
      },
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
                  style: SsentifTextStyles.medium16.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '총 ${workout.routinesExerciseDtos.length}개 종목, ${exerciseParts.length}개 운동 부위',
            style: SsentifTextStyles.bold16.copyWith(
              color: AppColors.black,
            ),
          ),
          if (exerciseParts.isNotEmpty) ...[
            const SizedBox(height: 10),
            Text(
              '운동 부위 - ${exerciseParts.map((e) => Intl.message(e.findStringKey())).join(" • ")}',
              style: SsentifTextStyles.medium14.copyWith(
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
                    style: SsentifTextStyles.bold12.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    workout.clientMemo,
                    style: SsentifTextStyles.medium12.copyWith(
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
                        style: SsentifTextStyles.medium12.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        exercise.routinesExerciseName,
                        style: SsentifTextStyles.medium14.copyWith(
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
                  style: SsentifTextStyles.medium16.copyWith(
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
              style: SsentifTextStyles.regular14.copyWith(
                color: AppColors.gray2,
              ),
            ),
          ],
          if (dailyFeedback.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              '피드백: $dailyFeedback',
              style: SsentifTextStyles.regular14.copyWith(
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
                    child: _buildDietThumbnailItem(diet),
                  );
                }).toList(),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildDietThumbnailItem(Map<String, dynamic> diet) {
    final mealTimeDto = diet['mealTime'] ?? '';
    final mealTakeTime = diet['time'] ?? '';
    final img = diet['img'] as List<dynamic>? ?? [];

    // DTO를 enum으로 변환
    final mealTimeType = MealTimeType.findMealTimeType(mealTimeDto);

    final mealTimeText = mealTimeType != null
        ? Intl.message(mealTimeType.getTextStringKey())
        : mealTimeDto;

    return GestureDetector(
      onTap: () {
        // 클릭 시 상세보기 (필요시 구현)
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "[$mealTakeTime] $mealTimeText",
            style: SsentifTextStyles.medium14.copyWith(
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
                            child: const Icon(
                              Icons.image_not_supported,
                              color: AppColors.gray3,
                              size: 40,
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
                        child: const Icon(
                          Icons.image_not_supported,
                          color: AppColors.gray3,
                          size: 40,
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
                    style: SsentifTextStyles.medium20.copyWith(
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
                  style: SsentifTextStyles.medium16.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '총 ${routine.routinesExerciseDtos.length}개 종목, ${exerciseParts.length}개 운동 부위',
            style: SsentifTextStyles.bold16.copyWith(
              color: AppColors.black,
            ),
          ),
          if (exerciseParts.isNotEmpty) ...[
            const SizedBox(height: 10),
            Text(
              '운동 부위 - ${exerciseParts.map((e) => Intl.message(e.findStringKey())).join(" • ")}',
              style: SsentifTextStyles.medium14.copyWith(
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
                    style: SsentifTextStyles.medium12.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    routine.exerciseComment,
                    style: SsentifTextStyles.medium12.copyWith(
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
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${index + 1}',
                        style: SsentifTextStyles.medium12.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        exercise.routinesExerciseName,
                        style: SsentifTextStyles.medium14.copyWith(
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

  Widget _buildTabButton({
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
          style: SsentifTextStyles.medium14.copyWith(
            color: selected ? AppColors.white : AppColors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
