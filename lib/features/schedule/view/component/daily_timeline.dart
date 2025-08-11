import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/calendar_schedule_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/schedule/view/component/schedule_dialog.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/schedule_detail_entity.dart';

// 시간 라벨 및 타임라인 cell 높이 상수 선언
const double kTimeLabelHeight = 40.0;
const double kTimeLabelWidth = 80.0;
const double kNameLabelHeight = 44.0;
const double kCoachTimelineMinWidth = 120.0;

class DailyTimeline extends StatelessWidget {
  final List<UserEntity> selectedCoaches;
  final List<CalendarScheduleEntity> selectedDateSchedules;
  final void Function(int scheduleId)? onScheduleTap;
   DailyTimeline({
    super.key,
    required this.selectedCoaches,
    required this.selectedDateSchedules,
    this.onScheduleTap,
  }) {
  }

  @override
  Widget build(BuildContext context) {
    final sortedCoaches = List<UserEntity>.from(selectedCoaches)
      ..sort((a, b) => a.userName.compareTo(b.userName));
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      clipBehavior: Clip.hardEdge,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final totalWidth = constraints.maxWidth;
          final coachCount = sortedCoaches.length;
          double coachTimelineWidth;
          bool isScrollable = false;
          if (coachCount <= 10) {
            coachTimelineWidth = ((totalWidth - kTimeLabelWidth) /
                        (coachCount == 0 ? 1 : coachCount))
                    .clamp(kCoachTimelineMinWidth, double.infinity) -
                5;
          } else {
            coachTimelineWidth = kCoachTimelineMinWidth;
            isScrollable = true;
          }
          final timelineRowWidth = coachTimelineWidth * coachCount;
          final timelineRow = Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    height: kNameLabelHeight - 10,
                    width: kTimeLabelWidth,
                    decoration: BoxDecoration(color: AppColors.white),
                  ),
                  _buildTimeLabels()
                ],
              ),
              Container(
                color: AppColors.grayEcEdF0,
                width: 1.5,
                height: kTimeLabelHeight * 18 + kNameLabelHeight,
              ),
              ...sortedCoaches.asMap().entries.map((entry) {
                final idx = entry.key;
                final coach = entry.value;
                return Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: _CoachTimeline(
                    coach: coach,
                    schedules: selectedDateSchedules
                        .where((s) => s.trainerName == coach.userName)
                        .toList(),
                    width: coachTimelineWidth,
                    isLastCoach: idx == sortedCoaches.length - 1,
                    onScheduleTap: onScheduleTap,
                  ),
                );
              }),
            ],
          );

          // 현재 시간 인디케이터 계산
          final now = DateTime.now();
          final startHour = 6;
          final endHour = 23;
          double? indicatorTop;
          if (now.hour >= startHour && now.hour <= endHour) {
            final minutesFromStart = (now.hour - startHour) * 60 + now.minute;
            indicatorTop =
                kNameLabelHeight + minutesFromStart * (kTimeLabelHeight / 60);
          }

          final timelineStack = Stack(
            children: [
              isScrollable
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: timelineRow,
                    )
                  : timelineRow,
              if (indicatorTop != null)
                Positioned(
                  top: indicatorTop,
                  left: kTimeLabelWidth + 1.5, // 시간라벨+divider
                  child: Container(
                    width: timelineRowWidth,
                    height: 1,
                    color: AppColors.subColorRed,
                  ),
                ),
            ],
          );

          return timelineStack;
        },
      ),
    );
  }

  Widget _buildTimeLabels() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(18, (i) {
        final hour = 6 + i;
        final label = hour < 12
            ? '오전 ${hour.toString().padLeft(2, '0')}시'
            : '오후 ${(hour > 12 ? hour - 12 : 12).toString().padLeft(2, '0')}시';
        return Container(
          height: kTimeLabelHeight,
          width: kTimeLabelWidth,
          alignment: Alignment.topCenter,
          child: Text(label,
              textAlign: TextAlign.center,
              style:
                  SsentifTextStyles.medium12.copyWith(color: AppColors.gray2)),
        );
      }),
    );
  }
}

class _CoachTimeline extends StatelessWidget {
  final UserEntity coach;
  final List<CalendarScheduleEntity> schedules;
  final double width;
  final bool isLastCoach;
  final void Function(int scheduleId)? onScheduleTap;
  const _CoachTimeline({
    required this.coach,
    required this.schedules,
    required this.width,
    required this.isLastCoach,
    this.onScheduleTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          // 코치 이름 표시
          Container(
            width: width,
            height: kNameLabelHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              border: Border(
                right: const BorderSide(color: AppColors.grayEcEdF0, width: 1),
                bottom: const BorderSide(color: AppColors.grayEcEdF0, width: 3),
              ),
            ),
            child: Text(
              coach.userName,
              style: SsentifTextStyles.bold18.copyWith(color: AppColors.black),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(18, (i) {
                  return Container(
                    height: kTimeLabelHeight,
                    width: width,
                    margin: const EdgeInsets.only(bottom: 0),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border:
                          Border.all(color: AppColors.grayEcEdF0, width: 0.5),
                    ),
                  );
                }),
              ),
              ...schedules
                  .map((schedule) => _buildScheduleBlock(schedule, context)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildScheduleBlock(
      CalendarScheduleEntity schedule, BuildContext context) {
    if (schedule.startTime == null || schedule.endTime == null)
      return SizedBox.shrink();
    final start = schedule.startTime!;
    final end = schedule.endTime!;
    final top = _timeToOffset(start);
    final height = _durationToHeight(start, end);
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: GestureDetector(
        onTap: () {
          if (onScheduleTap != null) {
            onScheduleTap!(schedule.scheduleId);
          }
        },
        child: Container(
          height: height,
          width: width,
          margin: const EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
            color: schedule.scheduleStatusType?.findColor() ?? Colors.grey,
            borderRadius: BorderRadius.circular(6),
          ),
          alignment: Alignment.center,
          child: Text(
            schedule.scheduleName,
            style: const TextStyle(fontSize: 12, color: Colors.white),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  ScheduleDetailEntity _toScheduleDetailEntity(CalendarScheduleEntity s) {
    return ScheduleDetailEntity(
      scheduleId: s.scheduleId,
      scheduleTitle: s.scheduleName,
      startDate: s.startTime != null
          ? s.startTime!.toIso8601String().split('T')[0]
          : '',
      endDate:
          s.endTime != null ? s.endTime!.toIso8601String().split('T')[0] : '',
      startTime: s.startTime != null
          ? s.startTime!.toIso8601String().split('T').last.substring(0, 5)
          : '',
      endTime: s.endTime != null
          ? s.endTime!.toIso8601String().split('T').last.substring(0, 5)
          : '',
      runningTime: s.runningTime,
      scheduleStatusType: s.scheduleStatusType,
      // 기타 필드는 기본값
    );
  }

  // 1시간 = kTimeLabelHeight px, 06:00 = 0px, 07:00 = kTimeLabelHeight px ...
  double _timeToOffset(DateTime time) {
    final startHour = 6;
    final minutesFromStart = (time.hour - startHour) * 60 + time.minute;
    return minutesFromStart * (kTimeLabelHeight / 60); // 1분 = 1px
  }

  double _durationToHeight(DateTime start, DateTime end) {
    final diff = end.difference(start);
    return diff.inMinutes * (kTimeLabelHeight / 60); // 1분 = 1px
  }
}
