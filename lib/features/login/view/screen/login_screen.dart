import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ssentif_manager_web/core/navigation/app_router.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/utils/context_utils.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:html' as html;
import '../effect/login_effect.dart';
import '../viewmodel/login_view_model.dart';
import '../intent/login_intent.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 로그인 화면 진입 시 Provider 상태 초기화
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(loginEffectProvider.notifier).state = null;
    });

    final viewModel = ref.read(loginViewModelProvider.notifier);
    final state = ref.watch(loginViewModelProvider);
    handleEffect(ref, context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.gray8,
      body: Column(
        children: [
          // 상단 Bar
          Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(color: AppColors.white),
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Assets.images.icSsentifTextLogo.image(
                    height: 24,
                    fit: BoxFit.contain,
                  ),
                ),
                Center(
                  child: Text(
                    '로그인',
                    style: SsentifTextStyles.regular18(context)
                        .copyWith(color: AppColors.gray1),
                  ),
                ),
              ],
            ),
          ),
          // 하단 Divider
          Container(
            width: double.infinity,
            height: 1,
            color: AppColors.gray4,
          ),
          // Bar 밑 Row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                          height: double.infinity,
                          constraints: BoxConstraints(minWidth: screenWidth * 0.4),
                          child: Assets.images.icBackgroundLogin.image(
                            height: double.infinity,
                            fit: BoxFit.cover,
                          )
                      ),
                      Positioned(
                          top: 100,
                          left: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "신뢰받는 센터 운영의 시작",
                                  style: SsentifTextStyles.bold38(context).copyWith(color: AppColors.black)
                              ),
                              SizedBox(height: 10),
                              Text(
                                  "센티프와 함께 더 나은 회원관리 경험을 제공하세요.",
                                  style: SsentifTextStyles.medium16(context).copyWith(color: AppColors.black)
                              )
                            ],
                          )
                      )
                    ],
                  ),
                ),
                // 우측: 로그인 폼
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.images.icSsentifTextLogo.image(
                        height: 32,
                      ),
                      const SizedBox(height: 65),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 32, horizontal: 24),
                        width: 350,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 75,
                                  child: Text(
                                    '이메일 ID',
                                    style: SsentifTextStyles.regular14(context)
                                        .copyWith(color: AppColors.gray1),
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Expanded(
                                  child: LoginTextField(
                                    hint: '이메일을 입력하세요',
                                    obscureText: false,
                                    onChanged: (value) =>
                                        viewModel.handleIntent(
                                            LoginIntent.updateEmail(value)),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 75,
                                  child: Text(
                                    '비밀번호',
                                    style: SsentifTextStyles.regular14(context)
                                        .copyWith(color: AppColors.gray1),
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Expanded(
                                  child: LoginTextField(
                                    hint: '비밀번호를 입력하세요',
                                    obscureText: true,
                                    onChanged: (value) =>
                                        viewModel.handleIntent(
                                            LoginIntent.updatePassword(value)),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                              width: double.infinity,
                              height: 54,
                              child: ElevatedButton(
                                onPressed: () {
                                  viewModel.handleIntent(LoginIntent.login());
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                  elevation: 1,
                                ),
                                child: Text('로그인',
                                    style: SsentifTextStyles.bold18(context)
                                        .copyWith(color: AppColors.white)),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: AppColors.gray4,
                            ),
                            const SizedBox(height: 16),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "아이디 찾기",
                                  style: SsentifTextStyles.medium14(context)
                                      .copyWith(color: AppColors.gray1),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    "/",
                                    style: SsentifTextStyles.medium14(context)
                                        .copyWith(color: AppColors.gray1),
                                  ),
                                ),
                                Text(
                                  "아이디 찾기",
                                  style: SsentifTextStyles.medium14(context)
                                      .copyWith(color: AppColors.gray1),
                                ),
                              ],
                            ),
                            const SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (state.onLoading)
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.3),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class LoginTextField extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  const LoginTextField({
    super.key,
    required this.hint,
    this.obscureText = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: SsentifTextStyles.regular14(context).copyWith(color: AppColors.black),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint,
        isDense: true,
        hintStyle: SsentifTextStyles.regular14(context).copyWith(color: AppColors.gray2),
        border: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.gray4,
            width: 2,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.gray4,
            width: 2,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.gray4,
            width: 2,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 14),
      ),
    );
  }
}

void handleEffect(WidgetRef ref, BuildContext context) {
  ref.listen<LoginEffect?>(loginEffectProvider, (previous, current) {
    if (current != null) {
      current.when(
        navigateToMain: () {
          context.showSnackBar("로그인이 완료되었습니다.");
          // 웹 브라우저의 히스토리를 완전히 교체
          context.go(AppRoutePath.main.path, extra: {"replaceAll": true});
          // 히스토리에서 로그인 페이지 제거
          if (context.mounted) {
            // 브라우저의 히스토리 API를 사용하여 현재 페이지를 교체
            html.window.history.replaceState(null, '', AppRoutePath.main.path);
          }
        },
        showError: (message) {},
        updateSavedEmail: (String email) {},
        showMessage: (String message) {
          context.showSnackBar(message);
        },
      );
      ref.read(loginEffectProvider.notifier).state = null;
    }
  });
}