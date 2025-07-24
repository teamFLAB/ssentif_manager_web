
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/typography.dart';
import '../../../../core/widgets/clickable_text.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../shared/enumtype/gender_type.dart';
import '../../domain/entity/client_list_entity.dart';

class CreatedClientItem extends StatelessWidget {
  final ClientListEntity client;
  final Function() onClickMatch;
  final Function(int clientId) onClickClientProfile;


  const CreatedClientItem({
    super.key,
    required this.client,
    required this.onClickMatch,
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
                CircleAvatar(
                    radius: 24,
                    child: (client.profileImage.isNotEmpty)
                        ? Image.network(client.profileImage)
                        : (client.gender == GenderType.male)
                        ? Image.asset(Assets.images.maleProfile.path)
                        : Image.asset(Assets.images.femaleProfile.path)
                ),
                const Padding(padding: EdgeInsets.only(right: 11)),
                Text(
                  "${client.userName} (${client.age}${Intl.message("unit_years_old")}, ${Intl.message(GenderType.findGenderOneChar(client.gender))})",
                  style: SsentifTextStyles.medium14
                      .copyWith(color: AppColors.black),
                ),
                const Spacer(),
                Text(
                  "${Intl.message("remain")} ${client.leftCountOfVoucher} ${Intl.message("unit_session_count")}",
                  style: SsentifTextStyles.medium14
                      .copyWith(color: AppColors.primary),
                )
              ],
            ),
          )
      ),
    );
  }
}
