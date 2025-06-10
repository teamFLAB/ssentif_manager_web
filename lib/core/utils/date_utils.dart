import 'package:intl/intl.dart';

import 'constants.dart';

extension CustomDateUtils on DateTime {
  String formatYearMonth() {
    return DateFormat('yyyy년 MM월', 'ko').format(this);
  }

  String formatDotYMDWithWeekday() {
    return DateFormat('yyyy . MM . dd (E)', 'ko').format(this);
  }

  String formatYMD() {
    return DateFormat(Constants.dateFormat).format(this);
  }

  String formatHM() {
    return DateFormat('HH:mm').format(this);
  }
  String formatM() {
    return DateFormat('mm').format(this);
  }
}

extension DateStringUtils on String {
  String convertDateFormat({String formatBefore = Constants.fullDateFormat, String formatAfter = Constants.dateFormat}) {
    var formattedDate = this;
    try {
      DateFormat beforeFormat = DateFormat(formatBefore);
      var parsedDate = beforeFormat.parse(this);
      formattedDate = DateFormat(formatAfter).format(parsedDate);
    } catch(e) {

    }
    return formattedDate;
  }
}