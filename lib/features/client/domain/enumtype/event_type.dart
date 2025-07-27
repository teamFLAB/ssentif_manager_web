import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';

enum EventType {
  attendance('출석완료', AppColors.subColorBlue),
  reservationComplete('예약완료', AppColors.primary),
  reservationRequest('예약요청', AppColors.subColorOrange),
  personalExercise('개인운동', AppColors.subColorRed),
  diet('식단', AppColors.subColorPurple);

  const EventType(this.label, this.color);

  final String label;
  final Color color;
}
