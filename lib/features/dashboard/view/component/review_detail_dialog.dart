import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/widgets/profile_image_widget.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/schedule_review_response.dart';
import 'package:ssentif_manager_web/gen/assets.gen.dart';
import 'package:ssentif_manager_web/shared/enumtype/gender_type.dart';

class ReviewDetailDialog extends StatelessWidget {
  final ScheduleReviewResponse review;

  const ReviewDetailDialog({
    super.key,
    required this.review,
  });

  static Future<void> show(
    BuildContext context, {
    required ScheduleReviewResponse review,
  }) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (_) => ReviewDetailDialog(review: review),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 날짜 포맷팅
    String formattedDate = '';
    try {
      if (review.scheduleDate.isNotEmpty) {
        final date = DateTime.parse(review.scheduleDate);
        formattedDate = DateFormat('yyyy.MM.dd EEEE', 'ko_KR').format(date);
      }
    } catch (e) {
      formattedDate = review.scheduleDate;
    }

    // 만족도 정수 변환
    final satisfactionInt = review.satisfaction.toInt();

    // 성별에 따른 프로필 이미지
    final clientProfileImage = review.clientGender == GenderType.maleDto
        ? Assets.images.maleProfile
        : Assets.images.femaleProfile;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: AppColors.white,
      child: Container(
        width: 600,
        constraints: const BoxConstraints(maxHeight: 700),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 상단 헤더
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '후기글',
                  style: SsentifTextStyles.bold24.copyWith(
                    color: AppColors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    color: AppColors.black,
                    size: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // 회원 및 강사 정보 Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 회원 프로필 이미지
                ClipOval(
                  child: clientProfileImage.image(
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                // 회원명과 '회원' 텍스트
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      review.clientName,
                      style: SsentifTextStyles.bold20.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Text(
                        '회원',
                        style: SsentifTextStyles.regular16.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                // 우측 화살표
                Assets.images.icRightGray.image(height: 20),
                const SizedBox(width: 20),
                // 강사 프로필 이미지
                ProfileImageWidget(
                  imageURL: review.trainerProfileImage,
                  size: 30,
                ),
                const SizedBox(width: 8),
                // 강사명과 '강사' 텍스트
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      review.trainerName,
                      style: SsentifTextStyles.bold20.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Text(
                        '강사',
                        style: SsentifTextStyles.regular16.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            // 날짜와 만족도 Row
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.gray4,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      formattedDate,
                      style: SsentifTextStyles.regular14.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.gray4,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.icSatisfactionPercent.image(
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '$satisfactionInt%',
                          style: SsentifTextStyles.regular14.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // 후기 내용
            Text(
              review.review,
              style: SsentifTextStyles.regular14.copyWith(
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
