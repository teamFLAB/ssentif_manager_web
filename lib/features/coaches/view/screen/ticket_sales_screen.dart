import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';

class TicketSalesScreen extends ConsumerStatefulWidget {
  const TicketSalesScreen({super.key});

  @override
  ConsumerState<TicketSalesScreen> createState() => _TicketSalesScreenState();
}

class _TicketSalesScreenState extends ConsumerState<TicketSalesScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 200,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.gray4),
        ),
        child: Text(
          '수강권 매출/분석 기능이 곧 제공될 예정이예요!',
          style: SsentifTextStyles.regular16(context),
        ),
      ),
    );
  }
}
