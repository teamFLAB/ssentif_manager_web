import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_history_entity.freezed.dart';

@freezed
class VoucherHistoryEntity with _$VoucherHistoryEntity {
  factory VoucherHistoryEntity({
    @Default(-1) int classInfoId,
    @Default("") String classStartDate,
    @Default("") String time,
    @Default(0) int currentLessonCount,
    @Default("") String routineName,
    @Default(0) int leftNumberOfTime,
  }) = _VoucherHistoryEntity;
}

