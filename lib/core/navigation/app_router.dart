import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/features/login/view/screen/login_screen.dart';

import '../../features/main/view/screen/main_screen.dart';

// 라우트 경로를 enum으로 관리
enum AppRoutePath {
  main,
  login
}

extension AppRoutePathExtension on AppRoutePath {
  String get path {
    switch (this) {
      case AppRoutePath.main:
        return '/';
      case AppRoutePath.login:
        return '/login';
    }
  }
}

final appRouterProvider = Provider<GoRouter>((ref) {
  var initLocation = StorageManager.getAccessToken()?.isNotEmpty== true
      ? AppRoutePath.main.path
      : AppRoutePath.login.path;

  return GoRouter(
    initialLocation: initLocation,
    routes: [
      GoRoute(
        path: AppRoutePath.main.path,
        builder: (context, state) => MainScreen(),
      ),
      GoRoute(
        path: AppRoutePath.login.path,
        builder: (context, state) => LoginScreen(),
      ),
    ],
  );
});
