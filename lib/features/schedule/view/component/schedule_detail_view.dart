
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/features/schedule/domain/entity/schedule_detail_entity.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:ssentif_manager_web/features/schedule/view/component/schedule_dialog.dart';

import '../../../../core/themes/app_colors.dart';

class ScheduleDetailView extends ConsumerWidget {
  final ScheduleDetailEntity scheduleDetail;
  final double widthPercent;

  ScheduleDetailView({
    super.key,
    required this.scheduleDetail,
    required this.widthPercent
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
      return Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.gray4)
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ScheduleDialogHeader(
              backgroundColor: scheduleDetail.scheduleStatusType?.findColor() ?? AppColors.subColorRed,
              statusText: Intl.message(
                  scheduleDetail.scheduleStatusType?.findScheduleDetailStringKey() ?? ""
              ),
              groupClients: scheduleDetail.groupClients,
              userName: scheduleDetail.scheduleStatusType == ScheduleStatusType.trainerEtcSchedule
                  ? "${scheduleDetail.userInfo.userName} 코치님"
                  : "${scheduleDetail.userInfo.userName} 회원님",
              onClickProfile: () {
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: (scheduleDetail.scheduleStatusType == ScheduleStatusType.trainerEtcSchedule)
                  ? EtcTypeContent(
                scheduleTitle: scheduleDetail.scheduleTitle,
                scheduleDate: scheduleDetail.startDate,
                classTime: "${scheduleDetail.startTime} - ${scheduleDetail.endTime}",
                runningTime: "",
                isTrainer: true,
                modifySchedule: () {
                },
              ) : ClassTypeContent(
                scheduleTitle: scheduleDetail.scheduleTitle,
                classCountInfo: "${scheduleDetail.leftNumberOfTime}/${scheduleDetail.totalNumberOfTime}",
                classTime: "${scheduleDetail.startTime} - ${scheduleDetail.endTime}",
                scheduleDate: scheduleDetail.startDate,
                runningTime: "",
                isTrainer: true,
                modifySchedule: () {

                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: (scheduleDetail.scheduleStatusType == ScheduleStatusType.reservationWait)
                    ? ReservationWaitButtons(
                    acceptRequest: () {},
                    rejectRequest: () {})
                    : (scheduleDetail.scheduleStatusType == ScheduleStatusType.reservationComplete)
                    ? ReservationCompleteButtons(
                    navToRoutine: () {},
                    checkClassAttend: () {},
                    deleteSchedule:() {})
                    : (scheduleDetail.scheduleStatusType == ScheduleStatusType.classComplete)
                    ? ClassCompleteButtons(
                    navToRoutine: () {},
                    deleteSchedule: () {},
                    rollbackClassAttend: () {})
                    : EtcScheduleButtons(deleteSchedule: () {})
            )
          ],
        ),
      );
    });
  }
}