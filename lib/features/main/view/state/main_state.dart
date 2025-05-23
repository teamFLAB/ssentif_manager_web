import 'package:ssentif_manager_web/features/main/domain/enumtype/navigation_section_type.dart';

class MainState {
  final String gymName;
  final NavigationSectionType selectedSection;

  const MainState({
    this.gymName = 'SSENTIF GYM',
    this.selectedSection = NavigationSectionType.schedule,
  });

  MainState copyWith(
      {String? gymName, NavigationSectionType? selectedSection}) {
    return MainState(
      gymName: gymName ?? this.gymName,
      selectedSection: selectedSection ?? this.selectedSection,
    );
  }
}
