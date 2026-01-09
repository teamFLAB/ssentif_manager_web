

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/utils/ext.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/typography.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../shared/enumtype/gender_type.dart';
import '../../domain/entity/client_list_entity.dart';

class MatchedClientItem extends StatelessWidget {
  final ClientListEntity client;
  final bool isSelected;
  final Function(int clientId) onClickClientProfile;


  const MatchedClientItem({
    super.key,
    required this.client,
    required this.isSelected,
    required this.onClickClientProfile
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { onClickClientProfile(client.clientId); },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: isSelected ? AppColors.backgroundTabSelected : AppColors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 18,
                  child: (client.gender == GenderType.male)
                      ? Image.asset(
                      Assets.images.maleProfile.path,
                  ) : Image.asset(
                      Assets.images.femaleProfile.path
                  )
              ),
              const Padding(padding: EdgeInsets.only(right: 14)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${client.userName} (${client.age}${Intl.message("unit_years_old")}, ${Intl.message(GenderType.findGenderOneChar(client.gender))})",
                      style: SsentifTextStyles.medium14(context)
                          .copyWith(color: AppColors.black),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 2)),
                    Text(
                      client.phoneNumber.toHyphenPhoneNumber(),
                      style: SsentifTextStyles.medium12(context)
                          .copyWith(color: AppColors.gray2),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "${Intl.message("remain")} ${client.leftCountOfVoucher} ${Intl.message("unit_session_count")}",
                style: SsentifTextStyles.medium14(context)
                    .copyWith(color: AppColors.primary),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
