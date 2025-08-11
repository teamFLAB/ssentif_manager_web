import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/context_utils.dart';
import 'package:ssentif_manager_web/features/income/incom_screen.dart';
import 'package:ssentif_manager_web/features/main/view/component/navigation_section.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/navigation/app_router.dart';
import '../viewmodel/main_view_model.dart';
import 'package:ssentif_manager_web/features/schedule/view/screen/schedule_screen.dart';
import 'package:ssentif_manager_web/features/coaches/view/screen/coaches_screen.dart';
import 'package:ssentif_manager_web/features/classRecords/view/screen/class_records_feed_screen.dart';
import 'package:ssentif_manager_web/features/main/domain/enumtype/navigation_section_type.dart';
import 'dart:html' as html;

class MainScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(mainViewModelProvider.notifier).loadCachedWorkPlaceInfo((){
        context.showSnackBar("세션이 만료되었습니다. 다시 로그인해주세요.");
        context.go(AppRoutePath.login.path, extra: {"replaceAll": true});
        html.window.history.replaceState(null, '', AppRoutePath.login.path);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final state = ref.watch(mainViewModelProvider);
      final viewModel = ref.read(mainViewModelProvider.notifier);

      return Scaffold(
        body: Row(
          children: [
            NavigationSection(
              gymName: state.gymName,
              selectedSection: state.selectedSection,
              onSectionSelected: viewModel.setSection,
            ),
            Expanded(
                child: state.selectedSection == NavigationSectionType.schedule
                    ? ScheduleScreen(coaches: state.coaches)
                    : state.selectedSection == NavigationSectionType.coach
                        ? CoachesScreen(coaches: state.coaches)
                        : state.selectedSection ==
                                NavigationSectionType.classRecords
                            ? ClassRecordsFeedScreen(coaches: state.coaches)
                            : IncomeScreen()),
          ],
        ),
      );
    });
  }
}
