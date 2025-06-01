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

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Consumer(
            builder: (context, ref, _) {
              final state = ref.watch(mainViewModelProvider);
              final viewModel = ref.read(mainViewModelProvider.notifier);
              return NavigationSection(
                gymName: state.gymName,
                selectedSection: state.selectedSection,
                onSectionSelected: viewModel.setSection,
              );
            },
          ),
          Expanded(
            child: Consumer(
              builder: (context, ref, _) {
                final coaches = ref.watch(mainViewModelProvider).coaches;
                final selected = ref.watch(mainViewModelProvider).selectedSection;
                switch (selected) {
                  case NavigationSectionType.schedule:
                    return ScheduleScreen(
                      coaches: coaches
                    );
                  case NavigationSectionType.coach:
                    return const CoachesScreen();
                  case NavigationSectionType.analysis:
                    // TODO: 분석 화면 추가 예정
                    return Center(child: Text('분석 화면 준비중'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
