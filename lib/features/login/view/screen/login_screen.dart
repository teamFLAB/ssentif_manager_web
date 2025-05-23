import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ssentif_manager_web/core/navigation/app_router.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/utils/context_utils.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../effect/login_effect.dart';
import '../viewmodel/login_view_model.dart';
import '../intent/login_intent.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(loginViewModelProvider.notifier);
    final state = ref.watch(loginViewModelProvider);
    handleEffect(ref, context);
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Assets.images.ssentifManagerTextLogo.image(),
                      const SizedBox(height: 45),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          '이메일',
                          style: GmarketSansStyles.medium16(AppColors.gray1),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: LoginTextField(
                          hint: '이메일을 입력하세요',
                          obscureText: false,
                          onChanged: (value) => viewModel
                              .handleIntent(LoginIntent.updateEmail(value)),
                        ),
                      ),
                      const SizedBox(height: 35),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          '비밀번호',
                          style: GmarketSansStyles.medium16(AppColors.gray1),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: LoginTextField(
                          hint: '비밀번호를 입력하세요',
                          obscureText: true,
                          onChanged: (value) => viewModel
                              .handleIntent(LoginIntent.updatePassword(value)),
                        ),
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Row(children: [
                          const Spacer(),
                          SizedBox(
                            height: 48,
                            child: ElevatedButton(
                              onPressed: () {
                                viewModel.handleIntent(LoginIntent.login());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 2,
                              ),
                              child: const Text('로그인',
                                  style: GmarketSansStyles.medium18(
                                      AppColors.white)),
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (state.onLoading)
              Container(
                color: Colors.black.withOpacity(0.3),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
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
      style: GmarketSansStyles.medium18(AppColors.black),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GmarketSansStyles.medium18(AppColors.gray2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.gray3,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.gray3,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.gray3,
            width: 1,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
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
          context.pushReplacement(AppRoutePath.main.path);
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
