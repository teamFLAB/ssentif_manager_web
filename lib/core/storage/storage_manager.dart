import 'package:ssentif_manager_web/core/storage/cookie_manager.dart';
import 'package:ssentif_manager_web/shared/domain/entity/work_place_entity.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

class StorageManager {
  static const String _accessTokenKey = 'accessToken';
  static const String _refreshTokenKey = 'refreshToken';
  static const String _userIdKey = 'userId';
  static const String _userNameKey = 'userName';

  static const String _workPlaceIdKey = 'workPlaceId';
  static const String _workPlaceNameKey = 'workPlaceName';
  static const String _workPlaceAddressKey = 'workPlaceAddress';
  static const String _workPlaceAddressDetailKey = 'workPlaceAddressDetail';

  static const String _coachListKey = 'coachList';

  /// accessToken 저장
  static void setAccessToken(String token) {
    CookieManager.setCookie(_accessTokenKey, token);
  }

  /// accessToken 가져오기
  static String? getAccessToken() {
    return CookieManager.getCookie(_accessTokenKey);
  }

  /// accessToken 삭제
  static void removeAccessToken() {
    CookieManager.removeCookie(_accessTokenKey);
  }

  /// refreshToken 저장
  static void setRefreshToken(String token) {
    CookieManager.setCookie(_refreshTokenKey, token);
  }

  /// refreshToken 가져오기
  static String? getRefreshToken() {
    return CookieManager.getCookie(_refreshTokenKey);
  }

  /// refreshToken 삭제
  static void removeRefreshToken() {
    CookieManager.removeCookie(_refreshTokenKey);
  }

  /// userId 저장
  static void setUserId(int? userId) {
    CookieManager.setCookie(_userIdKey, userId?.toString() ?? '');
  }

  /// userId 가져오기
  static int? getUserId() {
    final userIdString = CookieManager.getCookie(_userIdKey);
    if (userIdString != null && userIdString.isNotEmpty) {
      return int.tryParse(userIdString) ?? -1;
    } else {
      return null;
    }
  }

  /// userId 삭제
  static void removeUserId() {
    CookieManager.removeCookie(_userIdKey);
  }

  /// userName 저장
  static void setUserName(String userName) {
    CookieManager.setCookie(_userNameKey, userName);
  }

  /// userName 가져오기
  static String? getUserName() {
    return CookieManager.getCookie(_userNameKey);
  }

  /// userName 삭제
  static void removeUserName() {
    CookieManager.removeCookie(_userNameKey);
  }

  /// userName 가져오기
  static WorkPlaceEntity? getWorkPlaceInfo() {
    var workPlaceId = CookieManager.getCookie(_workPlaceIdKey);
    var workPlaceName = CookieManager.getCookie(_workPlaceNameKey);
    var workPlaceAddress = CookieManager.getCookie(_workPlaceAddressKey);
    var workPlaceAddressDetail =
        CookieManager.getCookie(_workPlaceAddressDetailKey);
    return WorkPlaceEntity(
        id: int.tryParse(workPlaceId ?? "-1") ?? -1,
        name: workPlaceName ?? "",
        address: workPlaceAddress ?? "",
        addressDetail: workPlaceAddressDetail ?? "");
  }

  /// 근무지 정보 저장
  static void setWorkPlace({
    int? workPlaceId,
    String? workPlaceName,
    String? workPlaceAddress,
    String? workPlaceAddressDetail,
  }) {
    setWorkPlaceId(workPlaceId: workPlaceId);
    setWorkPlaceName(workPlaceName: workPlaceName);
    setWorkPlaceAddress(workPlaceAddress: workPlaceAddress);
    setWorkPlaceAddressDetail(workPlaceAddressDetail: workPlaceAddressDetail);
  }

  static void setWorkPlaceId({required int? workPlaceId}) {
    CookieManager.setCookie(_workPlaceIdKey, workPlaceId?.toString() ?? '');
  }

  static void setWorkPlaceName({required String? workPlaceName}) {
    CookieManager.setCookie(_workPlaceNameKey, workPlaceName ?? "");
  }

  static void setWorkPlaceAddress({required String? workPlaceAddress}) {
    CookieManager.setCookie(_workPlaceAddressKey, workPlaceAddress ?? "");
  }

  static void setWorkPlaceAddressDetail(
      {required String? workPlaceAddressDetail}) {
    CookieManager.setCookie(
        _workPlaceAddressDetailKey, workPlaceAddressDetail ?? "");
  }

  static void removeWorkPlaceInfo() {
    CookieManager.removeCookie(_workPlaceIdKey);
    CookieManager.removeCookie(_workPlaceNameKey);
    CookieManager.removeCookie(_workPlaceAddressKey);
    CookieManager.removeCookie(_workPlaceAddressDetailKey);
  }

  /// 코치 리스트 저장
  static void setCoachList(List<UserEntity> coachList) {
    final jsonList = coachList
        .map((e) => e.toString())
        .toList(); // toString 대신 실제 toJson 필요시 수정
    CookieManager.setCookie(_coachListKey, jsonList.toString());
  }

  /// 코치 리스트 불러오기
  static List<UserEntity> getCoachList() {
    final jsonString = CookieManager.getCookie(_coachListKey);
    if (jsonString == null || jsonString.isEmpty) return [];
    // 실제로는 jsonDecode 및 fromJson 필요, 임시로 빈 리스트 반환
    return [];
  }

  /// 코치 리스트 삭제
  static void removeCoachList() {
    CookieManager.removeCookie(_coachListKey);
  }

  /// 모든 토큰 삭제
  static void clearAll() {
    removeAccessToken();
    removeRefreshToken();
    removeUserId();
    removeUserName();
    removeCoachList();
    removeWorkPlaceInfo();
  }

  /// 모든 쿠키 삭제 (웹 전용)
  static void clearAllCookies() {
    CookieManager.clearAllCookies();
  }
}
