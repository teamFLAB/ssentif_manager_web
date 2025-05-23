import 'package:intl/intl.dart';

extension CustomDateUtils on DateTime {
  String formatYearMonth() {
    return DateFormat('yyyy년 MM월', 'ko').format(this);
  }

  String formatDotYMDWithWeekday() {
    return DateFormat('yyyy . MM . dd (E)', 'ko').format(this);
  }
}
