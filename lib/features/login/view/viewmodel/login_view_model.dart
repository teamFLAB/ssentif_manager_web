import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/network/status_type.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import '../../../../shared/domain/usecase/get_user_info_usecase.dart';
import '../../../../shared/domain/usecase/search_workplaces_usecase.dart';
import '../../domain/usecase/login_usecase.dart';
import '../effect/login_effect.dart';
import '../intent/login_intent.dart';
import '../state/login_state.dart';

final loginViewModelProvider =
    StateNotifierProvider.autoDispose<LoginViewModel, LoginState>((ref) {
  final loginUseCase = ref.read(loginUseCaseProvider);
  var getUserInfoUseCase = ref.read(getUserInfoUseCaseProvider);
  var searchWorkplacesUseCase = ref.read(searchWorkplacesUseCaseProvider);
  final loginEffectStateController = ref.read(loginEffectProvider.notifier);

  return LoginViewModel(
      loginUseCase: loginUseCase,
      getUserInfoUseCase: getUserInfoUseCase,
      searchWorkplacesUseCase: searchWorkplacesUseCase,
      loginEffectStateController: loginEffectStateController);
});

class LoginViewModel extends StateNotifier<LoginState> {
  final LoginUseCase loginUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final SearchWorkplacesUseCase searchWorkplacesUseCase;

  final StateController<LoginEffect?> loginEffectStateController;

  LoginViewModel(
      {required this.loginUseCase,
      required this.getUserInfoUseCase,
      required this.searchWorkplacesUseCase,
      required this.loginEffectStateController})
      : super(const LoginState());

  void handleIntent(LoginIntent intent) async {
    intent.when(
        login: _login,
        updateEmail: _setEmail,
        updatePassword: _setPassword,
        checkRememberEmail: () {});
  }

  void _setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void _setPassword(String password) {
    state = state.copyWith(password: password);
  }

  Future<void> _login() async {
    if (state.email.isEmpty) {
      loginEffectStateController.state =
          LoginEffect.showMessage("이메일을 입력해주세요.");
      return;
    }
    if (state.password.isEmpty) {
      loginEffectStateController.state =
          LoginEffect.showMessage("비밀번호를 입력해주세요.");
      return;
    }

    state = state.copyWith(isLoading: true);

    var loginResponse =
        await loginUseCase(email: state.email, password: state.password);

    if (loginResponse.statusType == StatusType.SUCCESS) {
      if (loginResponse.data?.accessToken?.isNotEmpty == true) {
        StorageManager.setAccessToken(loginResponse.data?.accessToken ?? "");
      }
      if (loginResponse.data?.refreshToken?.isNotEmpty == true) {
        StorageManager.setRefreshToken(loginResponse.data?.refreshToken ?? "");
      }

      StorageManager.setUserId(loginResponse.data?.userId);
      StorageManager.setUserName(loginResponse.data?.userName ?? "");

      _updateUserInfo();
    } else {
      state = state.copyWith(isLoading: false);

      loginEffectStateController.state =
          LoginEffect.showMessage(loginResponse.errMsg);
    }
  }

  void _updateUserInfo() async {
    (await getUserInfoUseCase()).handleStatus(
        onSuccess: (userInfo) {
          if (userInfo?.workPlaceAddress.isNotEmpty == true) {
            _updateWorkplace(userInfo!.workPlaceName);
            StorageManager.setWorkPlace(
                workPlaceId: userInfo.workPlaceId,
                workPlaceName: userInfo.workPlaceName,
                workPlaceAddress: userInfo.workPlaceAddress,
                workPlaceAddressDetail: userInfo.workPlaceAddressDetail
            );
            loginEffectStateController.state = LoginEffect.navigateToMain();
          } else {
            _showInValidWorkPlace();
            state = state.copyWith(isLoading: false);
          }
        },
      onUnauthorized: () {
        _showInValidWorkPlace();
      }
    );
  }

  void _updateWorkplace(String keyword) async {
    var workplaces = await searchWorkplacesUseCase(keyword: keyword);
    if (workplaces.statusType == StatusType.SUCCESS) {
      if (workplaces.data?.isNotEmpty == true) {
        var myWorkPlace = workplaces.data!.where((workplace) {
          return workplace.name == keyword;
        }).firstOrNull;
        if (myWorkPlace != null) {
          StorageManager.setWorkPlace(
              workPlaceId: myWorkPlace.id,
              workPlaceName: myWorkPlace.name,
              workPlaceAddress: myWorkPlace.address,
              workPlaceAddressDetail: myWorkPlace.addressDetail);
          loginEffectStateController.state = LoginEffect.navigateToMain();
        } else {
          _showInValidWorkPlace();
        }
      } else {
        _showInValidWorkPlace();
      }
    } else {
      _showInValidWorkPlace();
    }
  }

  void _showInValidWorkPlace() {
    state = state.copyWith(isLoading: false);
    loginEffectStateController.state =
        LoginEffect.showMessage("관리자 서비스를 이용할 수 없습니다. 센티프 카카오톡 채널로 문의해주세요.");
  }
}
