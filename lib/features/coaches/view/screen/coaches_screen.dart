import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/coaches_intent.dart';
import '../component/coach_list_item.dart';
import 'package:ssentif_manager_web/features/coaches/view/viewmodel/coaches_view_model.dart';

import '../../../../shared/domain/entity/user_entity.dart';

class CoachesScreen extends ConsumerStatefulWidget {
  final List<UserEntity> coaches;

  const CoachesScreen({super.key, required this.coaches});

  @override
  ConsumerState<CoachesScreen> createState() => _CoachesScreenState();
}

class _CoachesScreenState extends ConsumerState<CoachesScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      var viewModelProvider = coachesViewModelProvider(widget.coaches);
      var viewModel = ref.read(viewModelProvider.notifier);
      var state = ref.watch(viewModelProvider);

      return Column(
        children: [
          Container(
            height: 75,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.grayE4, width: 1),
              ),
            ),
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                '근무중인 코치',
                style: ScDreamStyles.extraBold18(AppColors.black),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 55,
            decoration: BoxDecoration(),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20),
            child: ListView.separated(
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: state.coaches.length,
                separatorBuilder: (BuildContext context, int idx) {
                  return SizedBox(width: 10);
                },
                itemBuilder: (BuildContext context, int idx) {
                  var user = state.coaches[idx];
                  return CoachListItem(
                    user: user,
                    selected: state.selectedUserId == user.userId,
                    onClick: () {
                      viewModel.handleIntent(
                          CoachesIntent.clickCoachProfile(
                              userId: user.userId
                          )
                      );
                    },
                  );
                }
            ),
          )
        ],
      );
    });
  }
}
