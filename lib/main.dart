import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'core/navigation/app_router.dart';
import 'core/themes/app_colors.dart';
import 'generated/intl/messages_all.dart';

void main() async {
  // Intl 메시지 초기화 (기본 locale을 ko로 설정)
  await initializeMessages('ko');
  Intl.defaultLocale = 'ko';
  
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary, surface: AppColors.backgroundColor),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
      locale: const Locale('ko'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("en"),
        Locale("ko")
      ],
    );
  }
}
