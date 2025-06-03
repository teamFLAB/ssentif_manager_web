import 'package:ssentif_manager_web/features/main/domain/enumtype/navigation_section_type.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

class MainState {
  final String gymName;
  final NavigationSectionType selectedSection;
  final List<UserEntity> coaches;

  MainState({
    this.gymName = 'SSENTIF GYM',
    this.selectedSection = NavigationSectionType.schedule,
    required this.coaches
  });

  MainState copyWith({
    String? gymName,
    NavigationSectionType? selectedSection,
    List<UserEntity>? coaches
  }) {
    return MainState(
      gymName: gymName ?? this.gymName,
      selectedSection: selectedSection ?? this.selectedSection,
      coaches: coaches ?? this.coaches
    );
  }
}
