import 'package:intl/intl.dart';

extension CustomDateUtils on DateTime {
  String formatYearMonth() {
    return DateFormat('yyyy년 MM월', 'ko').format(this);
  }

  String formatDotYMDWithWeekday() {
    return DateFormat('yyyy . MM . dd (E)', 'ko').format(this);
  }

  String formatYMD() {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String formatHM() {
    return DateFormat('HH:mm').format(this);
  }
  String formatM() {
    return DateFormat('mm').format(this);
  }
}
