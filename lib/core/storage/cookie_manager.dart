import 'dart:html' as html;

class CookieManager {
  /// 쿠키 설정
  static void setCookie(String name, String value, {int? maxAge}) {
    String cookie = '$name=$value';

    if (maxAge != null) {
      cookie += '; max-age=$maxAge';
    }

    // 보안을 위한 설정
    cookie += '; path=/';
    cookie += '; SameSite=Strict';

    // HTTPS 환경에서는 Secure 플래그 추가
    if (html.window.location.protocol == 'https:') {
      cookie += '; Secure';
    }

    html.document.cookie = cookie;
  }

  /// 쿠키 가져오기
  static String? getCookie(String name) {
    final cookieString = html.document.cookie;
    if (cookieString == null || cookieString.isEmpty) return null;

    final cookies = cookieString.split(';');

    for (String cookie in cookies) {
      final parts = cookie.trim().split('=');
      if (parts.length == 2 && parts[0] == name) {
        return parts[1];
      }
    }

    return null;
  }

  /// 쿠키 삭제
  static void removeCookie(String name) {
    // 과거 날짜로 설정하여 쿠키 삭제
    setCookie(name, '', maxAge: -1);
  }

  /// 모든 쿠키 삭제
  static void clearAllCookies() {
    final cookieString = html.document.cookie;
    if (cookieString == null || cookieString.isEmpty) return;

    final cookies = cookieString.split(';');

    for (String cookie in cookies) {
      final parts = cookie.trim().split('=');
      if (parts.length == 2) {
        removeCookie(parts[0]);
      }
    }
  }
}
