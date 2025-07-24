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
    return Container(
      color: AppColors.backgroundColor,
      child: Center(
        child: Text(
          '수강권 매출 (준비중)',
          style: SsentifTextStyles.regular16.copyWith(
            color: AppColors.gray2,
          ),
        ),
      ),
    );
  }
}
