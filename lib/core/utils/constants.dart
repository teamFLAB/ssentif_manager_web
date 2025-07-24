
import 'dart:ui';

class Constants {
  static const dummyProfileImgUrl = "https://d1fk926dreqbpo.cloudfront.net/finut/profile_waiting_77px%402x.png";
  static const fullDateFormat = "yyyy-MM-ddTHH:mm:ss";
  static const dateFormat = "yyyy-MM-dd";
  static const hourMinutesFormat = "HH:mm";
  static String localizationDateFormat() => PlatformDispatcher.instance.locale.languageCode == "ko"
      ? "yyyy년 MM월 dd일 E요일"
      : "yyyy . MM . dd EEE";

}

