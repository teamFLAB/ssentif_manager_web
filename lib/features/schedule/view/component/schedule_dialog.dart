import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/ext.dart';
import 'package:ssentif_manager_web/features/schedule/domain/enumtype/schedule_status_type.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_info_entity.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/widgets/clickable_text.dart';
import '../../../../gen/assets.gen.dart';
import '../../domain/entity/schedule_detail_entity.dart';

class ScheduleDialog extends Dialog {
  final double radius;
  final double widthPercent;
  final BuildContext context;
  final ScheduleDetailEntity scheduleDetail;
  final Function() navToRoutine;
  final Function() checkClassAttend;
  final Function() deleteSchedule;
  final Function() rollbackClassAttend;
  final Function() acceptRequest;
  final Function() rejectRequest;
  final Function() modifyClassSchedule;
  final Function() modifyEtcSchedule;
  final Function(int clientId) navToClientDetail;


  final bool isTrainer;

  ScheduleDialog({
    super.key,
    required this.context,
    required this.scheduleDetail,
    required this.navToRoutine,
    required this.checkClassAttend,
    required this.deleteSchedule,
    required this.rollbackClassAttend,
    required this.acceptRequest,
    required this.rejectRequest,
    required this.isTrainer,
    required this.modifyClassSchedule,
    required this.modifyEtcSchedule,
    required this.navToClientDetail,
    this.radius = 15,
    this.widthPercent = 0.4
  }) : super(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      alignment: Alignment.center,
      child: Container(
        color: AppColors.white,
        width: MediaQuery.of(context).size.width * widthPercent,
        constraints: BoxConstraints(
          minWidth: 200
        ),
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
                navToClientDetail(scheduleDetail.userInfo.userId);
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
                isTrainer: isTrainer,
                modifySchedule: () {
                  modifyEtcSchedule();
                },
              ) : ClassTypeContent(
                scheduleTitle: scheduleDetail.scheduleTitle,
                classCountInfo: "${scheduleDetail.leftNumberOfTime}/${scheduleDetail.totalNumberOfTime}",
                classTime: "${scheduleDetail.startTime} - ${scheduleDetail.endTime}",
                scheduleDate: scheduleDetail.startDate,
                runningTime: "",
                isTrainer: isTrainer,
                modifySchedule: () {
                  modifyClassSchedule();
                },
              ),
            ),
            const SizedBox(height: 20)
            // Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            //     child: (scheduleDetail.scheduleStatusType == ScheduleStatusType.reservationWait)
            //         ? ReservationWaitButtons(
            //         acceptRequest: acceptRequest,
            //         rejectRequest: rejectRequest)
            //         : (scheduleDetail.scheduleStatusType == ScheduleStatusType.reservationComplete)
            //         ? ReservationCompleteButtons(
            //         navToRoutine: navToRoutine,
            //         checkClassAttend: checkClassAttend,
            //         deleteSchedule:deleteSchedule)
            //         : (scheduleDetail.scheduleStatusType == ScheduleStatusType.classComplete)
            //         ? ClassCompleteButtons(
            //         navToRoutine: navToRoutine,
            //         deleteSchedule: deleteSchedule,
            //         rollbackClassAttend: rollbackClassAttend)
            //         : EtcScheduleButtons(deleteSchedule: deleteSchedule)
            // )
          ],
        ),
      )
  );
}

class ScheduleDialogHeader extends StatelessWidget {
  final Color backgroundColor;
  final String statusText;
  final String userName;
  final List<UserInfoEntity> groupClients;
  final Function()? onClickProfile;


  const ScheduleDialogHeader({
    super.key,
    required this.backgroundColor,
    required this.statusText,
    required this.userName,
    required this.groupClients,
    this.onClickProfile
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 2, left: 8, right: 8),
                    child: Text(
                      statusText,
                      style: SsentifTextStyles.medium12.copyWith(color: backgroundColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      width: 25,
                      height: 25,
                      Assets.images.btnCloseWhite.path,
                    ),
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 9)),
            GestureDetector(
              onTap: () { if(onClickProfile != null) onClickProfile!(); },
              child: Row(
                children: [
                  Text(
                      groupClients.isNotEmpty
                          ? groupClients.getScheduleName(context)
                          : userName,
                      style: SsentifTextStyles.bold18.copyWith(color: AppColors.white)
                  ),
                  const Padding(padding: EdgeInsets.only(right: 5)),
                  Visibility(
                    visible: groupClients.isEmpty,
                    child: Image.asset(
                        Assets.images.icUserProfile.path
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}

class ClassTypeContent extends StatelessWidget {
  final String scheduleTitle;
  final String classCountInfo;
  final String scheduleDate;
  final String classTime;
  final String runningTime;
  final bool isTrainer;
  final Function() modifySchedule;

  const ClassTypeContent({super.key,
    required this.scheduleTitle,
    required this.classCountInfo,
    required this.scheduleDate,
    required this.classTime,
    required this.runningTime,
    required this.isTrainer,
    required this.modifySchedule
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
            children: [
              Text(
                  scheduleTitle,
                  style: SsentifTextStyles.medium18.copyWith(color: AppColors.black)
              ),
              const Spacer(),
              // Visibility(
              //   visible: isTrainer,
              //   child: GestureDetector(
              //     onTap: () {
              //       modifySchedule();
              //     },
              //     child: Text(
              //       "일정편집",
              //       style: SsentifTextStyles.medium12.copyWith(color: AppColors.gray3).copyWith(
              //           decoration: TextDecoration.underline,
              //           decorationColor: AppColors.gray3,
              //           decorationThickness: 1
              //       ),
              //     ),
              //   ),
              // ),
            ]
        ),
        const Padding(padding: EdgeInsets.only(top: 14)),
        ScheduleInfoText(category: "잔여 횟수", value: classCountInfo),
        ScheduleInfoText(category: "수업 일자", value: scheduleDate),
        ScheduleInfoText(category: "수업 시간", value: classTime),
      ],
    );
  }
}

class EtcTypeContent extends StatelessWidget {
  final String scheduleTitle;
  final String scheduleDate;
  final String classTime;
  final String runningTime;
  final bool isTrainer;
  final Function() modifySchedule;

  const EtcTypeContent({super.key,
    required this.scheduleTitle,
    required this.scheduleDate,
    required this.classTime,
    required this.runningTime,
    required this.isTrainer,
    required this.modifySchedule
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
                scheduleTitle,
                style: SsentifTextStyles.medium18.copyWith(color: AppColors.black)
            ),
            const Spacer(),
            // Visibility(
            //   visible: isTrainer,
            //   child: GestureDetector(
            //     onTap: () {
            //       modifySchedule();
            //     },
            //     child: Text(
            //       "일정편집",
            //       style: SsentifTextStyles.medium12.copyWith(color: AppColors.gray3).copyWith(
            //           decoration: TextDecoration.underline,
            //           decorationColor: AppColors.gray3,
            //           decorationThickness: 1
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 14)),
        ScheduleInfoText(category: "일자", value: scheduleDate),
        ScheduleInfoText(category: "시간", value: classTime),
      ],
    );
  }

}

class ScheduleInfoText extends StatelessWidget {
  final String category;
  final String value;

  const ScheduleInfoText({
    super.key,
    required this.category,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            category,
            style: SsentifTextStyles.medium14.copyWith(color: AppColors.gray2)
        ),
        const Padding(padding: EdgeInsets.only(left: 16)),
        Text(
            value,
            style: SsentifTextStyles.medium14.copyWith(color: AppColors.black)
        )
      ],
    );
  }

}


const List<BoxShadow> boxShadow = [
  BoxShadow(
    color: AppColors.gray1,
    offset: Offset(0.2, 0.2),
    blurRadius: 0.1,
  ),
];

/// DialogButtons
/// *

class ReservationCompleteButtons extends StatelessWidget {
  final Function() navToRoutine;
  final Function() checkClassAttend;
  final Function() deleteSchedule;

  const ReservationCompleteButtons({
    super.key,
    required this.navToRoutine,
    required this.checkClassAttend,
    required this.deleteSchedule
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          ClickableText(
              stretchWidth: true,
              text: Intl.message("today_routine"),
              innerPadding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: AppColors.primary,
              textAlign: TextAlign.center,
              textStyle: SsentifTextStyles.medium16.copyWith(color: AppColors.white),
              boxShadow: boxShadow,
              borderRadius: BorderRadius.circular(11),
              onClick: () {
                Navigator.pop(context);
                navToRoutine();
              }),
          const Padding(padding: EdgeInsets.only(top: 9)),
          ClickableText(
              stretchWidth: true,
              text: Intl.message("check_class_attend"),
              innerPadding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: AppColors.modalBackgroundGreen,
              textAlign: TextAlign.center,
              textStyle: SsentifTextStyles.medium16.copyWith(color: AppColors.modalTextGreen),
              boxShadow: boxShadow,
              borderRadius: BorderRadius.circular(11),
              onClick: () {
                Navigator.pop(context);
                checkClassAttend();
              }),
          const Padding(padding: EdgeInsets.only(top: 9)),
          ClickableText(
              stretchWidth: true,
              text: Intl.message("cancel_reservation"),
              innerPadding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: AppColors.white,
              textAlign: TextAlign.center,
              textStyle: SsentifTextStyles.medium16.copyWith(color: AppColors.subColorRed),
              boxShadow: boxShadow,
              borderRadius: BorderRadius.circular(11),
              onClick: () {
                Navigator.pop(context);
                deleteSchedule();
              }),
        ],
      ),
    );
  }
}

class ReservationWaitButtons extends StatelessWidget {
  final Function() acceptRequest;
  final Function() rejectRequest;

  const ReservationWaitButtons({
    super.key,
    required this.acceptRequest,
    required this.rejectRequest
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClickableText(
              text: Intl.message("reject_reservation_request"),
              innerPadding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: AppColors.white,
              textAlign: TextAlign.center,
              textStyle: SsentifTextStyles.medium16.copyWith(color: AppColors.gray2),
              boxShadow: boxShadow,
              borderRadius: BorderRadius.circular(11),
              onClick: () {
                Navigator.pop(context);
                rejectRequest();
              }),
        ),
        const Padding(padding: EdgeInsets.only(left: 8)),
        Expanded(
          child: ClickableText(
              text: Intl.message("accept_reservation_request"),
              innerPadding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: AppColors.subColorOrange,
              textAlign: TextAlign.center,
              textStyle: SsentifTextStyles.medium16.copyWith(color: AppColors.white),
              boxShadow: boxShadow,
              borderRadius: BorderRadius.circular(11),
              onClick: () {
                Navigator.pop(context);
                acceptRequest();
              }),
        )
      ],
    );
  }
}

class ClassCompleteButtons extends StatelessWidget {
  final Function() navToRoutine;
  final Function() deleteSchedule;
  final Function() rollbackClassAttend;

  const ClassCompleteButtons({
    super.key,
    required this.navToRoutine,
    required this.deleteSchedule,
    required this.rollbackClassAttend
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          ClickableText(
              stretchWidth: true,
              text: Intl.message("today_routine"),
              innerPadding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: AppColors.subColorBlue,
              textAlign: TextAlign.center,
              textStyle: SsentifTextStyles.medium16.copyWith(color: AppColors.white),
              boxShadow: boxShadow,
              borderRadius: BorderRadius.circular(11),
              onClick: () {
                Navigator.pop(context);
                navToRoutine();
              }),
          const Padding(padding: EdgeInsets.only(top: 9)),
          ClickableText(
              stretchWidth: true,
              text: Intl.message("cancel_class_attend"),
              innerPadding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: AppColors.white,
              textAlign: TextAlign.center,
              textStyle: SsentifTextStyles.medium16.copyWith(color: AppColors.subColorRed),
              boxShadow: boxShadow,
              borderRadius: BorderRadius.circular(11),
              onClick: () {
                Navigator.pop(context);
                rollbackClassAttend();
              })
        ],
      ),
    );
  }
}

class EtcScheduleButtons extends StatelessWidget {
  final Function() deleteSchedule;

  const EtcScheduleButtons({super.key, required this.deleteSchedule});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClickableText(
            stretchWidth: true,
            text: Intl.message("delete"),
            innerPadding: const EdgeInsets.symmetric(vertical: 15),
            backgroundColor: AppColors.gray3,
            textAlign: TextAlign.center,
            textStyle: SsentifTextStyles.medium16.copyWith(color: AppColors.white),
            boxShadow: boxShadow,
            borderRadius: BorderRadius.circular(11),
            onClick: () {
              Navigator.pop(context);
              deleteSchedule();
            }),
      ],
    );
  }
}