import 'dart:html' as html;

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
    html.window.localStorage[_accessTokenKey] = token;
  }

  /// accessToken 가져오기
  static String? getAccessToken() {
    return html.window.localStorage[_accessTokenKey];
  }

  /// accessToken 삭제
  static void removeAccessToken() {
    html.window.localStorage.remove(_accessTokenKey);
  }

  /// refreshToken 저장
  static void setRefreshToken(String token) {
    html.window.localStorage[_refreshTokenKey] = token;
  }

  /// refreshToken 가져오기
  static String? getRefreshToken() {
    return html.window.localStorage[_refreshTokenKey];
  }

  /// refreshToken 삭제
  static void removeRefreshToken() {
    html.window.localStorage.remove(_refreshTokenKey);
  }

  /// userId 저장
  static void setUserId(int? userId) {
    html.window.localStorage[_userIdKey] = userId.toString();
  }

  /// userId 가져오기
  static int? getUserId() {
    if (html.window.localStorage[_userIdKey] != null) {
      return int.tryParse(html.window.localStorage[_userIdKey]!) ?? -1;
    } else {
      return null;
    }
  }

  /// userId 삭제
  static void removeUserId() {
    html.window.localStorage.remove(_userIdKey);
  }

  /// userName 저장
  static void setUserName(String userName) {
    html.window.localStorage[_userNameKey] = userName;
  }

  /// userName 가져오기
  static String? getUserName() {
    return html.window.localStorage[_userNameKey];
  }

  /// userName 삭제
  static void removeUserName() {
    html.window.localStorage.remove(_userNameKey);
  }

  /// userName 가져오기
  static WorkPlaceEntity? getWorkPlaceInfo() {
    var workPlaceId = html.window.localStorage[_workPlaceIdKey];
    var workPlaceName = html.window.localStorage[_workPlaceNameKey];
    var workPlaceAddress = html.window.localStorage[_workPlaceAddressKey];
    var workPlaceAddressDetail =
        html.window.localStorage[_workPlaceAddressDetailKey];
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
    html.window.localStorage[_workPlaceIdKey] = workPlaceId.toString();
  }

  static void setWorkPlaceName({required String? workPlaceName}) {
    html.window.localStorage[_workPlaceNameKey] = workPlaceName ?? "";
  }

  static void setWorkPlaceAddress({required String? workPlaceAddress}) {
    html.window.localStorage[_workPlaceAddressKey] = workPlaceAddress ?? "";
  }

  static void setWorkPlaceAddressDetail(
      {required String? workPlaceAddressDetail}) {
    html.window.localStorage[_workPlaceAddressDetailKey] =
        workPlaceAddressDetail ?? "";
  }

  static void removeWorkPlaceInfo() {
    html.window.localStorage.remove(_workPlaceIdKey);
    html.window.localStorage.remove(_workPlaceNameKey);
    html.window.localStorage.remove(_workPlaceAddressKey);
    html.window.localStorage.remove(_workPlaceAddressDetailKey);
  }

  /// 코치 리스트 저장
  static void setCoachList(List<UserEntity> coachList) {
    final jsonList = coachList
        .map((e) => e.toString())
        .toList(); // toString 대신 실제 toJson 필요시 수정
    html.window.localStorage[_coachListKey] = jsonList.toString();
  }

  /// 코치 리스트 불러오기
  static List<UserEntity> getCoachList() {
    final jsonString = html.window.localStorage[_coachListKey];
    if (jsonString == null || jsonString.isEmpty) return [];
    // 실제로는 jsonDecode 및 fromJson 필요, 임시로 빈 리스트 반환
    return [];
  }

  /// 코치 리스트 삭제
  static void removeCoachList() {
    html.window.localStorage.remove(_coachListKey);
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
}
