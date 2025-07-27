

import 'package:intl/intl.dart';

enum ClientCalendarEventType {
  workoutEvent,
  clientEtcEvent,
  classEvent,
  reservationCompleteEvent,
  classRequestEvent,
  classCompleteEvent,
  dietEvent;

  static String findTypeName(ClientCalendarEventType type) {
    switch(type) {
      case ClientCalendarEventType.workoutEvent:
        return Intl.message("label_name_workout");
      case ClientCalendarEventType.clientEtcEvent:
        return Intl.message("label_name_client_etc");
      case ClientCalendarEventType.classEvent:
        return Intl.message("label_name_class");
      case ClientCalendarEventType.reservationCompleteEvent:
        return Intl.message("label_name_class");
      case ClientCalendarEventType.classCompleteEvent:
        return Intl.message("label_name_class");
      case ClientCalendarEventType.classRequestEvent:
        return Intl.message("label_name_class");
      case ClientCalendarEventType.dietEvent:
        return Intl.message("label_name_diet");
    }
  }
}