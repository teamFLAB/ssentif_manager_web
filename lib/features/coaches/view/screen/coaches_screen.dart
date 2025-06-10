import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/coaches/domain/enumtype/coach_tab.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/coaches_intent.dart';
import 'package:ssentif_manager_web/features/schedule/view/component/weekly_scheduler_widget.dart';
import 'package:ssentif_manager_web/features/schedule/view/screen/weekly_schedule_page.dart';
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
  final _tabController = PageController(initialPage: 0);

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
            height: 60,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.grayE4, width: 1, strokeAlign: BorderSide.strokeAlignInside),
              ),
            ),
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Text(
                    '근무중인 코치',
                    style: ScDreamStyles.extraBold18(AppColors.black),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 24),
                    child: ListView.separated(
                        physics: AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: state.coaches.length,
                        separatorBuilder: (BuildContext context, int idx) {
                          return SizedBox(width: 1.5);
                        },
                        itemBuilder: (BuildContext context, int idx) {
                          var user = state.coaches[idx];
                          return CoachListItem(
                            user: user,
                            selected: state.selectedUser?.userId == user.userId,
                            isFirstItem: idx == 0,
                            onClick: () {
                              viewModel.handleIntent(
                                  CoachesIntent.clickCoachProfile(user: user)
                              );
                            },
                          );
                        }),
                  ),

                ],
              ),
            ),
          ),
          Container(
            height: 1,
            color: AppColors.grayE4,
          ),
          const SizedBox(height: 20),
          _CoachTabBar(
              selectedTabIdx: state.selectedTabIdx,
              onSelectTab: (int value) {
                setState(() {
                  viewModel.handleIntent(CoachesIntent.selectTab(idx: value));
                  _tabController.jumpToPage(value);
                });
              }),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: PageView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (_) {},
                children: [
                  WeeklySchedulePage(),
                  Center(child: Text('관리중인 회원 페이지')),
                  Center(child: Text('월간 수업 페이지')),
                  Center(child: Text('수강권 매출 페이지')),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}

class _CoachTabBar extends StatelessWidget {
  final List<CoachTab> tabs = CoachTab.values;
  final int selectedTabIdx;
  final ValueChanged<int> onSelectTab;

  const _CoachTabBar(
      {super.key, required this.selectedTabIdx, required this.onSelectTab});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 24),
        ...List.generate(tabs.length, (idx) {
          final selected = selectedTabIdx == idx;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                onSelectTab(idx);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
                decoration: BoxDecoration(
                  color: selected ? AppColors.primary : AppColors.gray4,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  tabs[idx].label,
                  style: ScDreamStyles.medium12(
                    selected ? AppColors.white : AppColors.gray2,
                  ),
                ),
              ),
            ),
          );
        })
      ],
    );
  }
}
