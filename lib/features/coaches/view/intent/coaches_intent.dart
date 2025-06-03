
import 'package:freezed_annotation/freezed_annotation.dart';
part 'coaches_intent.freezed.dart';

@freezed
sealed class CoachesIntent with _$CoachesIntent {
  const factory CoachesIntent.clickCoachProfile({required int userId}) = _ClickCoachProfile;
}
