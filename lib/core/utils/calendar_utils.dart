import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarUtils {
  /// 특정 날짜로부터 n일 후의 날짜 반환
  static DateTime addDays(DateTime date, int days) {
    return date.add(Duration(days: days));
  }

  /// 특정 날짜로부터 n개월 후의 날짜 반환
  static DateTime addMonths(DateTime date, int months) {
    int year = date.year + ((date.month - 1 + months) ~/ 12);
    int month = ((date.month - 1 + months) % 12) + 1;
    int day = date.day;
    // 해당 월의 마지막 날짜를 초과하면 마지막 날짜로 보정
    int lastDayOfMonth = DateTime(year, month + 1, 0).day;
    if (day > lastDayOfMonth) day = lastDayOfMonth;
    return DateTime(year, month, day);
  }

  /// 해당 날짜가 속한 주의 월요일 반환
  static DateTime getMonday(DateTime date) {
    // DateTime.weekday: 월=1, 일=7
    return date.subtract(Duration(days: date.weekday - 1));
  }

  /// 해당 날짜가 속한 주의 일요일 반환
  static DateTime getSunday(DateTime date) {
    return date.add(Duration(days: 7 - date.weekday));
  }

  /// 특정 날짜로부터 n주 후의 날짜 반환
  static DateTime addWeeks(DateTime date, int weeks) {
    return date.add(Duration(days: 7 * weeks));
  }
}
