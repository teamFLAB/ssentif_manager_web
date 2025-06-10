
enum ScheduleType {
  classSchedule,
  etcSchedule,
  prescribeSchedule,
  clientEtcSchedule;

  static ScheduleType? findScheduleTypeByName(String name) {
    if(name == ScheduleType.classSchedule.name) {
      return ScheduleType.classSchedule;
    } else if(name == ScheduleType.etcSchedule.name) {
      return ScheduleType.etcSchedule;
    } else if(name == ScheduleType.prescribeSchedule.name) {
      return ScheduleType.prescribeSchedule;
    } else if(name == ScheduleType.clientEtcSchedule.name) {
      return ScheduleType.clientEtcSchedule;
    } else {
      return null;
    }
  }

  static String? findScheduleTypeStringKey(ScheduleType type) {
    if(type == ScheduleType.classSchedule) {
      return "class_string";
    } else if(type == ScheduleType.etcSchedule) {
      return "etc";
    } else if(type == ScheduleType.prescribeSchedule) {
      return "prescribed_routine";
    } else if(type == ScheduleType.clientEtcSchedule) {
      return "label_name_client_etc";
    } else {
      return null;
    }
  }
}

class ScheduleTypeDto {
  ScheduleTypeDto._();
  static final _instance = ScheduleTypeDto._();
  factory ScheduleTypeDto() => _instance;

  static const String classScheduleDto = "CLASS";
  static const String etcScheduleDto = "ETC";
  static const String prescribeScheduleDto = "PRESCRIBE";
  static const String clientEtcScheduleDto = "CLIENT_ETC";

  static ScheduleType? findScheduleType(String dto) {
    switch(dto) {
      case classScheduleDto:
        return ScheduleType.classSchedule;
      case etcScheduleDto:
        return ScheduleType.etcSchedule;
      case prescribeScheduleDto:
        return ScheduleType.prescribeSchedule;
      case clientEtcScheduleDto:
        return ScheduleType.clientEtcSchedule;
      default:
        return null;
    }
  }
}