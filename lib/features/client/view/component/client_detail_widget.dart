import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/ext.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_profile_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_monthly_calendar_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/exercise_purpose.dart';
import 'package:ssentif_manager_web/shared/enumtype/gender_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/mathcing_status_type.dart';
import 'package:ssentif_manager_web/features/client/domain/enumtype/event_type.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/managed_members_intent.dart';
import 'package:ssentif_manager_web/shared/enumtype/client_calendar_event_type.dart';
import 'type_count_widget.dart';
import 'monthly_calendar_widget.dart';
import 'daily_records_dialog.dart';
import '../../../../gen/assets.gen.dart';

class ClientDetailWidget extends ConsumerWidget {
  final ClientListEntity? clientInfo;
  final ClientProfileEntity? clientProfile;
  final ClientMonthlyCalendarEntity? clientCalendar;
  final DateTime selectedMonth;
  final VoidCallback onClickThisMonth;
  final VoidCallback onClickPreviousMonth;
  final VoidCallback onClickNextMonth;

  const ClientDetailWidget({
    super.key,
    this.clientInfo,
    this.clientProfile,
    this.clientCalendar,
    required this.selectedMonth,
    required this.onClickThisMonth,
    required this.onClickPreviousMonth,
    required this.onClickNextMonth,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var genderStringKey = clientInfo != null
        ? GenderType.findGenderOneChar(clientInfo!.gender)
        : "";
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '선택된 회원의 코칭현황',
            style: SsentifTextStyles.medium14.copyWith(
              color: AppColors.gray1,
            ),
          ),
          const SizedBox(height: 12),
          if (clientInfo != null)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${clientInfo!.userName} ${Intl.message("client")}",
                          style: SsentifTextStyles.medium18.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '(${clientInfo!.age}세, ${Intl.message(genderStringKey)})',
                          style: SsentifTextStyles.medium14.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '잔여 ${clientProfile?.matchingInfoSimpleDto.leftNumberOfTime ?? 0}회',
                          style: SsentifTextStyles.medium16.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible:
                          clientInfo?.statusType != MatchingStatusType.created,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 60,
                                child: Text(
                                  '운동 목적',
                                  style: SsentifTextStyles.medium12.copyWith(
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                clientProfile
                                        ?.searchUserInfoDto.exercisePurposes
                                        .map((e) => Intl.message(
                                            e.findExercisePurposeString()))
                                        .join(", ") ??
                                    "",
                                style: SsentifTextStyles.medium12.copyWith(
                                  color: AppColors.gray2,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          // 연락처
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 60,
                                child: Text(
                                  '연락처',
                                  style: SsentifTextStyles.medium12.copyWith(
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                clientInfo!.phoneNumber.toHyphenPhoneNumber(),
                                style: SsentifTextStyles.medium12.copyWith(
                                  color: AppColors.gray2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Container(
                        width: double.infinity,
                        height: 1,
                        color: AppColors.gray4,
                      ),
                    ),
                    // 년월 표시와 버튼들
                    Row(
                      children: [
                        Text(
                          DateFormat('yyyy년 MM월').format(selectedMonth),
                          style: SsentifTextStyles.medium18.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(width: 12),
                        // 이번달 버튼
                        GestureDetector(
                          onTap: onClickThisMonth,
                          child: Container(
                            height: 20,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.gray4,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '이번달',
                              style: SsentifTextStyles.medium10.copyWith(
                                color: AppColors.gray555,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        // 이전 버튼
                        GestureDetector(
                          onTap: onClickPreviousMonth,
                          child: Assets.images.icPreviousButton.image(
                            width: 20,
                            height: 20,
                          ),
                        ),
                        const SizedBox(width: 8),
                        // 다음 버튼
                        GestureDetector(
                          onTap: onClickNextMonth,
                          child: Assets.images.icNextButton.image(
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // 타입별 카운트 Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TypeCountWidget(
                          color: AppColors.subColorBlue,
                          typeText: '출석완료',
                          count: clientCalendar?.classCompleteCounts ?? 0,
                        ),
                        TypeCountWidget(
                          color: AppColors.primary,
                          typeText: '예약완료',
                          count:
                              clientCalendar?.classReservationCompleteCounts ??
                                  0,
                        ),
                        TypeCountWidget(
                          color: AppColors.subColorOrange,
                          typeText: '예약요청',
                          count:
                              clientCalendar?.classReservationWaitCounts ?? 0,
                        ),
                        TypeCountWidget(
                          color: AppColors.subColorRed,
                          typeText: '개인운동',
                          count: clientCalendar?.workoutCounts ?? 0,
                        ),
                        TypeCountWidget(
                          color: AppColors.subColorPurple,
                          typeText: '식단',
                          count: clientCalendar?.dietCounts ?? 0,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // 월간 캘린더
                    MonthlyCalendarWidget(
                      selectedMonth: selectedMonth,
                      eventsByDate: _getEventsFromCalendar(),
                      onDayTap: (date) {
                        if (clientInfo != null) {
                          DailyRecordsDialog.show(
                            context,
                            selectedDate: date,
                            clientId: clientInfo!.clientId,
                            events: clientCalendar?.events ?? [],
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            )
          else
            Container(
              width: double.infinity,
              height: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  '회원을 선택해주세요',
                  style: SsentifTextStyles.regular18.copyWith(
                    color: AppColors.gray2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Map<DateTime, List<EventType>> _getEventsFromCalendar() {
    if (clientCalendar?.events == null) {
      return {};
    }

    Map<DateTime, List<EventType>> eventsByDate = {};

    for (var event in clientCalendar!.events) {
      final date = DateTime(event.startDateTime.year, event.startDateTime.month,
          event.startDateTime.day);

      if (!eventsByDate.containsKey(date)) {
        eventsByDate[date] = [];
      }

      // CalendarEventEntity의 eventType을 EventType으로 변환
      switch (event.eventType) {
        case ClientCalendarEventType.classEvent:
        case ClientCalendarEventType.reservationCompleteEvent:
          eventsByDate[date]!.add(EventType.reservationComplete);
        case ClientCalendarEventType.classCompleteEvent:
          eventsByDate[date]!.add(EventType.attendance);
          break;
        case ClientCalendarEventType.classRequestEvent:
          eventsByDate[date]!.add(EventType.reservationRequest);
          break;
        case ClientCalendarEventType.workoutEvent:
          eventsByDate[date]!.add(EventType.personalExercise);
          break;
        case ClientCalendarEventType.dietEvent:
          eventsByDate[date]!.add(EventType.diet);
          break;
        case ClientCalendarEventType.clientEtcEvent:
          // 기타 이벤트는 무시
          break;
      }
    }

    return eventsByDate;
  }
}
