import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_profile_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/exercise_purpose.dart';
import 'package:ssentif_manager_web/shared/enumtype/gender_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/mathcing_status_type.dart';
import 'package:ssentif_manager_web/features/client/domain/enumtype/event_type.dart';
import 'type_count_widget.dart';
import 'monthly_calendar_widget.dart';

class ClientDetailWidget extends StatelessWidget {
  final ClientListEntity? clientInfo;
  final ClientProfileEntity? clientProfile;

  const ClientDetailWidget({super.key, this.clientInfo, this.clientProfile});

  @override
  Widget build(BuildContext context) {
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
          clientInfo != null
              ? Expanded(
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
                              style: SsentifTextStyles.medium20.copyWith(
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
                          visible: clientInfo?.statusType !=
                              MatchingStatusType.created,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '운동 목적',
                                    style: SsentifTextStyles.medium14.copyWith(
                                      color: AppColors.black,
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
                                    style: SsentifTextStyles.medium14.copyWith(
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
                                    width: 50,
                                    child: Text(
                                      '연락처',
                                      style:
                                          SsentifTextStyles.medium14.copyWith(
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    clientInfo!.phoneNumber,
                                    style: SsentifTextStyles.medium14.copyWith(
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
                        // 타입별 카운트 Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TypeCountWidget(
                              color: AppColors.subColorBlue,
                              typeText: '출석완료',
                              count: 12, // 더미 데이터
                            ),
                            TypeCountWidget(
                              color: AppColors.primary,
                              typeText: '예약완료',
                              count: 8, // 더미 데이터
                            ),
                            TypeCountWidget(
                              color: AppColors.subColorOrange,
                              typeText: '예약요청',
                              count: 3, // 더미 데이터
                            ),
                            TypeCountWidget(
                              color: AppColors.subColorRed,
                              typeText: '개인운동',
                              count: 5, // 더미 데이터
                            ),
                            TypeCountWidget(
                              color: AppColors.subColorPurple,
                              typeText: '식단',
                              count: 2, // 더미 데이터
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        // 월간 캘린더
                        MonthlyCalendarWidget(
                          selectedMonth: DateTime.now(),
                          eventsByDate: _getDummyEvents(),
                          onDayTap: (date) {
                            print('Selected date: $date');
                          },
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
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

  Map<DateTime, List<EventType>> _getDummyEvents() {
    final now = DateTime.now();
    final currentMonth = DateTime(now.year, now.month, 1);

    return {
      // 15일에 식단과 개인운동
      DateTime(now.year, now.month, 15): [
        EventType.diet,
        EventType.personalExercise,
      ],
      // 18일에 출석완료와 예약완료
      DateTime(now.year, now.month, 18): [
        EventType.attendance,
        EventType.reservation,
      ],
      // 22일에 예약요청
      DateTime(now.year, now.month, 22): [
        EventType.reservationRequest,
      ],
      // 25일에 개인운동
      DateTime(now.year, now.month, 25): [
        EventType.personalExercise,
      ],
      // 28일에 식단
      DateTime(now.year, now.month, 28): [
        EventType.diet,
      ],
    };
  }
}
