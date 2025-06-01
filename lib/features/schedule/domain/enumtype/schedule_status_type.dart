
import 'dart:ui';

import '../../../../core/themes/app_colors.dart';

class ScheduleStatusTypeDto {
  ScheduleStatusTypeDto._();
  static final ScheduleStatusTypeDto _instance = ScheduleStatusTypeDto._();
  factory ScheduleStatusTypeDto() {
    return _instance;
  }

  static const reservationWait = "RESERVATION_WAIT";
  static const reservationComplete = "RESERVATION_COMPLETE";
  static const classComplete = "CLASS_COMPLETE";
  static const prescribeWait = "PRESCRIBE_WAIT";
  static const prescribeComplete = "PRESCRIBE_COMPLETE";
  static const trainerEtcSchedule = "ETC";

  static ScheduleStatusType findScheduleStatusType(String dto) {
    switch(dto) {
      case reservationWait:
        return ScheduleStatusType.reservationWait;
      case reservationComplete:
        return ScheduleStatusType.reservationComplete;
      case classComplete:
        return ScheduleStatusType.classComplete;
      case prescribeWait:
        return ScheduleStatusType.prescribeWait;
      case prescribeComplete:
        return ScheduleStatusType.prescribeComplete;
      default:
        return ScheduleStatusType.trainerEtcSchedule;
    }
  }

  static ScheduleStatusType? findScheduleStatusTypeByName(String name) {
    if(name == ScheduleStatusType.reservationWait.name) {
      return ScheduleStatusType.reservationWait;
    } else if(name == ScheduleStatusType.reservationComplete.name) {
      return ScheduleStatusType.reservationComplete;
    } else if(name == ScheduleStatusType.classComplete.name) {
      return ScheduleStatusType.classComplete;
    } else if(name == ScheduleStatusType.prescribeWait.name) {
      return ScheduleStatusType.prescribeWait;
    } else if(name == ScheduleStatusType.prescribeComplete.name) {
      return ScheduleStatusType.prescribeComplete;
    } else {
      return null;
    }
  }
}

enum ScheduleStatusType {
  reservationWait,
  reservationComplete,
  classComplete,
  prescribeWait,
  prescribeComplete,
  trainerEtcSchedule;
}

extension ScheduleStatusTypeExtensions on ScheduleStatusType {
  String findScheduleDetailStringKey() {
    switch(this) {
      case ScheduleStatusType.reservationWait:
        return "reservation_wait";
      case ScheduleStatusType.reservationComplete:
        return "reservation_complete";
      case ScheduleStatusType.classComplete:
        return "class_complete";
      case ScheduleStatusType.trainerEtcSchedule:
        return "etc_schedule";
      default:
        return "";
    }
  }

  Color findColor() {
    switch(this) {
      case ScheduleStatusType.reservationWait:
        return AppColors.subColorOrange;
      case ScheduleStatusType.reservationComplete:
        return AppColors.primary;
      case ScheduleStatusType.classComplete:
        return AppColors.subColorBlue;
      case ScheduleStatusType.trainerEtcSchedule:
        return AppColors.gray3;
      default:
        return AppColors.subColorRed;
    }
  }
}