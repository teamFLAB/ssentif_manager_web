import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:ssentif_manager_web/core/utils/context_utils.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';

import '../../domain/entity/calendar_schedule_entity.dart';

class DailySchedulesDialog extends StatelessWidget {
  final DateTime selectedDate;
  final Map<ScheduleStatusType, int> schedulesForDate;
  final List<CalendarScheduleEntity> selectedDateSchedules;

  const DailySchedulesDialog(
      {super.key,
      required this.selectedDate,
      required this.schedulesForDate,
      required this.selectedDateSchedules});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.hardEdge,
      backgroundColor: AppColors.white,
      child: Container(
        width: 1000,
        height: 530,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.zero,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 헤더
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      selectedDate.formatLocalFullFormat(),
                      style: SsentifTextStyles.medium24(context).copyWith(
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            // 컨텐츠,
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: schedulesForDate.isEmpty
                    ? Center(
                        child: Text(
                          '해당 날짜에 등록된 일정이 없습니다.',
                          style: SsentifTextStyles.regular14(context).copyWith(
                            color: AppColors.gray2,
                          ),
                        ),
                      )
                    : Row(
                        children: schedulesForDate.entries
                            .toList()
                            .asMap()
                            .entries
                            .map((e) {
                          final idx = e.key;
                          final statusType = e.value.key;
                          final count = e.value.value;

                          return Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 상태 정보 Row
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 14,
                                        height: 14,
                                        decoration: BoxDecoration(
                                            color: statusType.findColor(),
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        _getStatusText(statusType),
                                        style:
                                            SsentifTextStyles.medium16(context).copyWith(
                                          color: AppColors.black,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '$count건',
                                        style:
                                            SsentifTextStyles.medium16(context).copyWith(
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 25),
                                // 일정 리스트 (현재는 더미 데이터)
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius: BorderRadius.zero,
                                          ),
                                          child: _buildScheduleList(statusType),
                                        ),
                                      ),
                                      Visibility(
                                        visible: idx !=
                                            schedulesForDate.entries.length - 1,
                                        child: Container(
                                          width: 1,
                                          color: AppColors.gray4,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleList(ScheduleStatusType statusType) {
    // 해당 타입의 일정들만 필터링
    final filteredSchedules = selectedDateSchedules
        .where((schedule) => schedule.scheduleStatusType == statusType)
        .toList();

    if (filteredSchedules.isEmpty) {
      return const Center(
        child: Text(
          '일정이 없습니다.',
          style: TextStyle(color: AppColors.gray2),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.only(left: 12, right: 12),
      itemCount: filteredSchedules.length,
      itemBuilder: (context, index) {
        final schedule = filteredSchedules[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 순서 번호 (원형 컨테이너)
              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: statusType.findColor(),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    style: SsentifTextStyles.regular10(context).copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // 일정 정보
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      schedule.scheduleStatusType == ScheduleStatusType.trainerEtcSchedule ?
                      '${schedule.trainerName} 코치 - ${schedule.scheduleName}'
                      : '${schedule.trainerName} 코치 - ${schedule.scheduleName} 회원',
                      style: SsentifTextStyles.regular14(context).copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${schedule.startTime?.formatHM()} ~ ${schedule.endTime?.formatHM()}',
                      style: SsentifTextStyles.regular14(context).copyWith(
                        color: AppColors.gray2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _getStatusText(ScheduleStatusType statusType) {
    switch (statusType) {
      case ScheduleStatusType.reservationWait:
        return '예약 요청';
      case ScheduleStatusType.reservationComplete:
        return '예약 완료';
      case ScheduleStatusType.classComplete:
        return '출석 완료';
      case ScheduleStatusType.prescribeWait:
        return '처방 대기';
      case ScheduleStatusType.prescribeComplete:
        return '처방 완료';
      case ScheduleStatusType.trainerEtcSchedule:
        return '기타';
    }
  }
}
