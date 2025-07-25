import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssentif_manager_web/shared/domain/entity/user_entity.dart';

part 'coaches_intent.freezed.dart';

@freezed
sealed class CoachesIntent with _$CoachesIntent {
  const factory CoachesIntent.clickCoachProfile({required UserEntity user}) =
      _ClickCoachProfile;
  const factory CoachesIntent.selectTab({required int idx}) = _SelectTab;
  const factory CoachesIntent.updateCalendarDate(DateTime calendarDate) =
      _UpdateCalendarDate;
}
