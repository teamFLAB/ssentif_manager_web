

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/utils/ext.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/typography.dart';
import '../../../../core/utils/constants.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../shared/enumtype/gender_type.dart';
import '../../domain/entity/client_list_entity.dart';

class MatchedClientItem extends StatelessWidget {
  final ClientListEntity client;
  final Function(int clientId) onClickClientProfile;


  const MatchedClientItem({
    super.key,
    required this.client,
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
            color: AppColors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 48,
                  height: 48,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: (client.profileImage.isNotEmpty && client.profileImage != Constants.dummyProfileImgUrl)
                      ? Image.network(
                      client.profileImage
                  ) : client.profileImage.isNotEmpty
                      ? Image.asset(
                      fit: BoxFit.cover,
                      Assets.images.icSsentifProfile.path
                  ) : (client.gender == GenderType.male)
                      ? Image.asset(
                      Assets.images.maleProfile.path
                  ) : Image.asset(
                      Assets.images.femaleProfile.path
                  )
              ),
              const Padding(padding: EdgeInsets.only(right: 11)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "${client.userName} (${client.age}${Intl.message("unit_years_old")}, ${Intl.message(GenderType.findGenderOneChar(client.gender))})",
                    style: SsentifTextStyles.medium14
                        .copyWith(color: AppColors.black),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 2)),
                  Text(
                    client.phoneNumber.toHyphenPhoneNumber(),
                    style: SsentifTextStyles.medium12
                        .copyWith(color: AppColors.gray2),
                  )
                ],
              ),
              const Spacer(),
              Text(
                "${Intl.message("remain")} ${client.leftCountOfVoucher} ${Intl.message("unit_session_count")}",
                style: SsentifTextStyles.medium14
                    .copyWith(color: AppColors.primary),
              )
            ],
          ),
        ),
      ),
    );
  }
}
