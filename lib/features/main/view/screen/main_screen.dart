import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/main/view/component/navigation_section.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodel/main_view_model.dart';
import 'package:ssentif_manager_web/features/schedule/view/screen/schedule_screen.dart';
import 'package:ssentif_manager_web/features/coaches/view/screen/coaches_screen.dart';
import 'package:ssentif_manager_web/features/main/domain/enumtype/navigation_section_type.dart';

class MainScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder:  (context, ref, _) {
      final state = ref.watch(mainViewModelProvider);
      final viewModel = ref.read(mainViewModelProvider.notifier);

      print("===> ${state.coaches}");
      return Scaffold(
        body: Row(
          children: [
            NavigationSection(
              gymName: state.gymName,
              selectedSection: state.selectedSection,
              onSectionSelected: viewModel.setSection,
            ),
            Expanded(
                child: state.selectedSection == NavigationSectionType.schedule ?
                ScheduleScreen(
                    coaches: state.coaches
                ) : state.selectedSection == NavigationSectionType.coach ?
                CoachesScreen(
                    coaches: state.coaches
                ) : Center(child: Text('분석 화면 준비중'))
            )
            ,
          ],
        ),
      );

    });

  }
}
