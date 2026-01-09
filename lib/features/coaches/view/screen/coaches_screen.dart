import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/features/coaches/domain/enumtype/coach_tab.dart';
import 'package:ssentif_manager_web/features/coaches/view/intent/coaches_intent.dart';
import '../component/coach_list_item.dart';
import 'package:ssentif_manager_web/features/coaches/view/viewmodel/coaches_view_model.dart';
import 'monthly_statistics_screen.dart';
import 'managed_members_screen.dart';

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
          // 고정된 상단 영역
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
          ),
          // 상단 고정 영역 (45-92)
          Column(
            children: [
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.only(left: 30),
                child: ListView.separated(
                    physics: AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: state.coaches.length,
                    separatorBuilder: (BuildContext context, int idx) {
                      return SizedBox(width: 8);
                    },
                    itemBuilder: (BuildContext context, int idx) {
                      var user = state.coaches[idx];
                      return CoachListItem(
                        user: user,
                        profileImgSize: 30,
                        selected: state.selectedUser?.userId == user.userId,
                        isFirstItem: idx == 0,
                        onClick: () {
                          viewModel.handleIntent(
                              CoachesIntent.clickCoachProfile(user: user));
                        },
                      );
                    }),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 1,
                  width: double.infinity,
                  color: AppColors.gray9,
                ),
              ),
              const SizedBox(height: 15),
              // 탭바 (좌측 절반만 차지)
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: _CoachTabBar(
                    selectedTabIdx: state.selectedTabIdx,
                    onSelectTab: (int value) {
                      viewModel
                          .handleIntent(CoachesIntent.selectTab(idx: value));
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
          // 탭별 콘텐츠 영역
          Expanded(
            child: IndexedStack(
              index: state.selectedTabIdx,
              children: [
                // ManagedMembersScreen: 좌우 별도 스크롤
                ManagedMembersScreen(
                  selectedCoach: state.selectedUser,
                ),
                // MonthlyStatisticsScreen: 전체 스크롤
                SingleChildScrollView(
                  child: MonthlyStatisticsScreen(
                    selectedCoach: state.selectedUser,
                    selectedMonth: state.calendarDate ?? DateTime.now(),
                  ),
                ),
                // TicketSalesScreen(),
              ],
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

  const _CoachTabBar({required this.selectedTabIdx, required this.onSelectTab});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 30),
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
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                decoration: BoxDecoration(
                    color: selected
                        ? AppColors.backgroundTabSelected
                        : AppColors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        color: selected ? AppColors.green1899 : AppColors.white,
                        width: 1)),
                child: Text(
                  tabs[idx].label,
                  style: (selected
                          ? SsentifTextStyles.bold12(context)
                          : SsentifTextStyles.regular12(context))
                      .copyWith(
                    color: selected ? AppColors.green1899 : AppColors.black,
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
