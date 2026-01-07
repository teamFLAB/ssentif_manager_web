import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/ext.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_list_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_profile_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/client_monthly_calendar_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/exercise_purpose.dart';
import 'package:ssentif_manager_web/shared/enumtype/gender_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/mathcing_status_type.dart';
import 'package:ssentif_manager_web/features/client/domain/enumtype/event_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/client_calendar_event_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/body_composition_type.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_body_composition_analysis_usecase.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/body_composition_analysis_entity.dart';
import 'package:ssentif_manager_web/core/network/status_type.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_monthly_diet_usecase.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/uploaded_diet_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_client_voucher_list_usecase.dart';
import 'package:ssentif_manager_web/features/client/domain/usecase/get_client_voucher_histories_usecase.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/voucher_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/voucher_history_entity.dart';
import 'package:ssentif_manager_web/shared/enumtype/voucher_color_type.dart';
import 'package:ssentif_manager_web/shared/enumtype/voucher_status_type.dart';
import 'package:ssentif_manager_web/core/widgets/month_selector_widget.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/core/utils/constants.dart';
import '../../../../generated/l10n.dart';
import 'package:ssentif_manager_web/shared/enumtype/feedback_tag_type.dart';
import 'package:fl_chart/fl_chart.dart';
import 'type_count_widget.dart';
import 'monthly_calendar_widget.dart';
import 'daily_records_dialog.dart';
import 'diet_detail_dialog.dart';
import '../../../../gen/assets.gen.dart';

enum ClientDetailTab {
  coachingStatus,
  bodyChange,
  diet,
  membership,
}

class ClientDetailWidget extends ConsumerStatefulWidget {
  final ClientListEntity? clientInfo;
  final ClientProfileEntity? clientProfile;
  final ClientMonthlyCalendarEntity? clientCalendar;
  final DateTime selectedMonth;
  final VoidCallback onClickThisMonth;
  final VoidCallback onClickPreviousMonth;
  final VoidCallback onClickNextMonth;

  const ClientDetailWidget({
    super.key,
    this.clientInfo,
    this.clientProfile,
    this.clientCalendar,
    required this.selectedMonth,
    required this.onClickThisMonth,
    required this.onClickPreviousMonth,
    required this.onClickNextMonth,
  });

  @override
  ConsumerState<ClientDetailWidget> createState() => _ClientDetailWidgetState();
}

class _ClientDetailWidgetState extends ConsumerState<ClientDetailWidget> {
  ClientDetailTab _selectedTab = ClientDetailTab.coachingStatus;

  // 체성분 분석 관련 상태
  BodyCompositionType _selectedBodyCompositionType = BodyCompositionType.weight;
  BodyCompositionAnalysisListEntity? _bodyCompositionData;
  bool _isLoadingBodyComposition = false;

  // 식단 관련 상태
  List<UploadedDietEntity> _monthlyDiets = [];
  bool _isLoadingDiet = false;

  // 수강권 관련 상태
  List<VoucherEntity> _vouchers = [];
  VoucherEntity? _selectedVoucher;
  bool _isLoadingVoucher = false;
  final ScrollController _voucherScrollController = ScrollController();

  // 수강 이력 관련 상태
  List<VoucherHistoryEntity> _voucherHistories = [];
  bool _isLoadingVoucherHistory = false;
  int _currentHistoryPage = 1;
  static const int _historyItemsPerPage = 10;

  @override
  void didUpdateWidget(ClientDetailWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // clientInfo가 변경되었을 때 체성분 데이터 초기화 및 재로드
    if (oldWidget.clientInfo?.clientId != widget.clientInfo?.clientId) {
      _bodyCompositionData = null;
      _isLoadingBodyComposition = false;
      _monthlyDiets = [];
      _isLoadingDiet = false;
      _vouchers = [];
      _selectedVoucher = null;
      _isLoadingVoucher = false;
      _voucherHistories = [];
      _isLoadingVoucherHistory = false;

      // 현재 탭이 bodyChange이면 즉시 데이터 로드
      if (_selectedTab == ClientDetailTab.bodyChange &&
          widget.clientInfo != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _loadBodyCompositionData();
        });
      }
      // 현재 탭이 diet이면 즉시 데이터 로드
      if (_selectedTab == ClientDetailTab.diet && widget.clientInfo != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _loadMonthlyDietData();
        });
      }
      // 현재 탭이 membership이면 즉시 데이터 로드
      if (_selectedTab == ClientDetailTab.membership &&
          widget.clientInfo != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _loadVoucherData();
        });
      }
    }
    // selectedMonth가 변경되었을 때 식단 데이터 재로드
    if (oldWidget.selectedMonth != widget.selectedMonth &&
        _selectedTab == ClientDetailTab.diet &&
        widget.clientInfo != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _loadMonthlyDietData();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var genderStringKey = widget.clientInfo != null
        ? GenderType.findGenderOneChar(widget.clientInfo!.gender)
        : "";
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '선택된 회원의 코칭현황',
            style: SsentifTextStyles.medium14.copyWith(
              color: AppColors.gray1,
            ),
          ),
          const SizedBox(height: 12),
          if (widget.clientInfo != null)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${widget.clientInfo!.userName} ${Intl.message("client")}",
                          style: SsentifTextStyles.medium18.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '(${widget.clientInfo!.age}세, ${Intl.message(genderStringKey)})',
                          style: SsentifTextStyles.medium14.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '잔여 ${widget.clientProfile?.matchingInfoSimpleDto.leftNumberOfTime ?? 0}회',
                          style: SsentifTextStyles.medium16.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: widget.clientInfo?.statusType !=
                          MatchingStatusType.created,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 60,
                                child: Text(
                                  '운동 목적',
                                  style: SsentifTextStyles.medium12.copyWith(
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                widget.clientProfile?.searchUserInfoDto
                                        .exercisePurposes
                                        .map((e) => Intl.message(
                                            e.findExercisePurposeString()))
                                        .join(", ") ??
                                    "",
                                style: SsentifTextStyles.medium12.copyWith(
                                  color: AppColors.gray2,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          // 연락처
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 60,
                                child: Text(
                                  '연락처',
                                  style: SsentifTextStyles.medium12.copyWith(
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                widget.clientInfo!.phoneNumber
                                    .toHyphenPhoneNumber(),
                                style: SsentifTextStyles.medium12.copyWith(
                                  color: AppColors.gray2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Container(
                        width: double.infinity,
                        height: 2,
                        color: AppColors.gray6,
                      ),
                    ),
                    // 탭 버튼들
                    Row(
                      children: [
                        Expanded(
                          child: _buildTabButton(
                            text: '코칭현황',
                            isSelected:
                                _selectedTab == ClientDetailTab.coachingStatus,
                            onTap: () {
                              setState(() {
                                _selectedTab = ClientDetailTab.coachingStatus;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _buildTabButton(
                            text: '신체변화',
                            isSelected:
                                _selectedTab == ClientDetailTab.bodyChange,
                            onTap: () {
                              final wasDifferentTab =
                                  _selectedTab != ClientDetailTab.bodyChange;
                              setState(() {
                                _selectedTab = ClientDetailTab.bodyChange;
                              });
                              // 탭이 변경되었고 bodyChange로 변경된 경우 데이터 로드
                              if (wasDifferentTab &&
                                  _bodyCompositionData == null &&
                                  !_isLoadingBodyComposition &&
                                  widget.clientInfo != null) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  _loadBodyCompositionData();
                                });
                              }
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _buildTabButton(
                            text: '식단',
                            isSelected: _selectedTab == ClientDetailTab.diet,
                            onTap: () {
                              final wasDifferentTab =
                                  _selectedTab != ClientDetailTab.diet;
                              setState(() {
                                _selectedTab = ClientDetailTab.diet;
                              });
                              // 탭이 변경되었고 diet로 변경된 경우 데이터 로드
                              if (wasDifferentTab &&
                                  _monthlyDiets.isEmpty &&
                                  !_isLoadingDiet &&
                                  widget.clientInfo != null) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  _loadMonthlyDietData();
                                });
                              }
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _buildTabButton(
                            text: '수강권',
                            isSelected:
                                _selectedTab == ClientDetailTab.membership,
                            onTap: () {
                              final wasDifferentTab =
                                  _selectedTab != ClientDetailTab.membership;
                              setState(() {
                                _selectedTab = ClientDetailTab.membership;
                              });
                              // 탭이 변경되었고 membership로 변경된 경우 데이터 로드
                              if (wasDifferentTab &&
                                  _vouchers.isEmpty &&
                                  !_isLoadingVoucher &&
                                  widget.clientInfo != null) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  _loadVoucherData();
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // 탭별 컨텐츠
                    Expanded(
                      child: _buildTabContent(),
                    ),
                  ],
                ),
              ),
            )
          else
            Container(
              width: double.infinity,
              height: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  '회원을 선택해주세요',
                  style: SsentifTextStyles.regular18.copyWith(
                    color: AppColors.gray2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTabButton({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.white,
          borderRadius: BorderRadius.circular(5),
          border: isSelected
              ? Border.all(color: AppColors.primary, width: 1)
              : Border.all(color: AppColors.gray4, width: 1),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: SsentifTextStyles.medium14.copyWith(
            color: isSelected ? AppColors.white : AppColors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    switch (_selectedTab) {
      case ClientDetailTab.coachingStatus:
        return _buildCoachingStatusContent();
      case ClientDetailTab.bodyChange:
        return _buildBodyChangeContent();
      case ClientDetailTab.diet:
        return _buildDietContent();
      case ClientDetailTab.membership:
        return _buildMembershipContent();
    }
  }

  Widget _buildCoachingStatusContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              DateFormat('yyyy년 MM월').format(widget.selectedMonth),
              style: SsentifTextStyles.medium18.copyWith(
                color: AppColors.black,
              ),
            ),
            const SizedBox(width: 12),
            // 이번달 버튼
            GestureDetector(
              onTap: widget.onClickThisMonth,
              child: Container(
                height: 22,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: AppColors.gray4,
                  borderRadius: BorderRadius.circular(4),
                ),
                alignment: Alignment.center,
                child: Text(
                  '이번달',
                  style: SsentifTextStyles.medium10.copyWith(
                    color: AppColors.gray555,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            // 이전 버튼
            GestureDetector(
              onTap: widget.onClickPreviousMonth,
              child: Assets.images.icPreviousButton.image(
                width: 20,
                height: 20,
              ),
            ),
            const SizedBox(width: 10),
            // 다음 버튼
            GestureDetector(
              onTap: widget.onClickNextMonth,
              child: Assets.images.icNextButton.image(
                width: 20,
                height: 20,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        // 타입별 카운트 Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TypeCountWidget(
              color: AppColors.subColorBlue,
              typeText: '출석완료',
              count: widget.clientCalendar?.classCompleteCounts ?? 0,
            ),
            TypeCountWidget(
              color: AppColors.primary,
              typeText: '예약완료',
              count: widget.clientCalendar?.classReservationCompleteCounts ?? 0,
            ),
            TypeCountWidget(
              color: AppColors.subColorOrange,
              typeText: '예약요청',
              count: widget.clientCalendar?.classReservationWaitCounts ?? 0,
            ),
            TypeCountWidget(
              color: AppColors.subColorRed,
              typeText: '개인운동',
              count: widget.clientCalendar?.workoutCounts ?? 0,
            ),
            TypeCountWidget(
              color: AppColors.subColorPurple,
              typeText: '식단',
              count: widget.clientCalendar?.dietCounts ?? 0,
            ),
          ],
        ),
        const SizedBox(height: 20),
        // 월간 캘린더
        Expanded(
          child: MonthlyCalendarWidget(
            selectedMonth: widget.selectedMonth,
            eventsByDate: _getEventsFromCalendar(),
            onDayTap: (date) {
              if (widget.clientInfo != null) {
                // 선택된 날짜의 이벤트만 필터링
                final selectedDateEvents =
                    (widget.clientCalendar?.events ?? []).where((event) {
                  final eventDate = DateTime(
                    event.startDateTime.year,
                    event.startDateTime.month,
                    event.startDateTime.day,
                  );
                  final targetDate = DateTime(
                    date.year,
                    date.month,
                    date.day,
                  );
                  return eventDate.isAtSameMomentAs(targetDate);
                }).toList();

                DailyRecordsDialog.show(
                  context,
                  selectedDate: date,
                  clientId: widget.clientInfo!.clientId,
                  events: selectedDateEvents,
                );
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildBodyChangeContent() {
    if (_isLoadingBodyComposition) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_bodyCompositionData == null) {
      return Center(
        child: Text(
          Intl.message("empty_recent_body_composition"),
          style: SsentifTextStyles.medium16.copyWith(
            color: AppColors.gray2,
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '최근 체성분 측정',
          style: SsentifTextStyles.medium18.copyWith(
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 16),
        // 탭 버튼들
        Row(
          children: [
            Expanded(
              child: _buildBodyCompositionTabItem(
                type: BodyCompositionType.weight,
                value: _getCurrentValue(BodyCompositionType.weight),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: _buildBodyCompositionTabItem(
                type: BodyCompositionType.skeletalMuscle,
                value: _getCurrentValue(BodyCompositionType.skeletalMuscle),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: _buildBodyCompositionTabItem(
                type: BodyCompositionType.fat,
                value: _getCurrentValue(BodyCompositionType.fat),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: _buildBodyCompositionTabItem(
                type: BodyCompositionType.bodyFatPercentage,
                value: _getCurrentValue(BodyCompositionType.bodyFatPercentage),
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),
        // 차트
        SizedBox(
          height: 350,
          child: _buildBodyCompositionChart(),
        ),
      ],
    );
  }

  Future<void> _loadBodyCompositionData() async {
    if (widget.clientInfo == null) return;

    setState(() {
      _isLoadingBodyComposition = true;
    });

    try {
      final useCase = ref.read(getBodyCompositionAnalysisUseCaseProvider);
      final result = await useCase.call(
        clientId: widget.clientInfo!.clientId,
        count: 6,
      );

      if (result.statusType == StatusType.SUCCESS && result.data != null) {
        setState(() {
          _bodyCompositionData = result.data;
          _isLoadingBodyComposition = false;
        });
      } else {
        setState(() {
          _isLoadingBodyComposition = false;
        });
      }
    } catch (e) {
      setState(() {
        _isLoadingBodyComposition = false;
      });
    }
  }

  double _getCurrentValue(BodyCompositionType type) {
    if (_bodyCompositionData == null) return 0.0;

    BodyCompositionAnalysisEntity entity;
    switch (type) {
      case BodyCompositionType.weight:
        entity = _bodyCompositionData!.weightInfo;
        break;
      case BodyCompositionType.skeletalMuscle:
        entity = _bodyCompositionData!.skeletalMuscleMassInfo;
        break;
      case BodyCompositionType.fat:
        entity = _bodyCompositionData!.bodyFatInfo;
        break;
      case BodyCompositionType.bodyFatPercentage:
        entity = _bodyCompositionData!.bodyFatPercentageInfo;
        break;
    }

    try {
      return double.parse(entity.currentInBodyInfoOfCategory);
    } catch (e) {
      return 0.0;
    }
  }

  Widget _buildBodyCompositionTabItem({
    required BodyCompositionType type,
    required double value,
  }) {
    final isSelected = _selectedBodyCompositionType == type;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedBodyCompositionType = type;
        });
      },
      child: Container(
        height: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.gray4,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30,
              alignment: Alignment.center,
              child: Text(
                type.getTypeString(),
                style: SsentifTextStyles.medium12.copyWith(
                  color: AppColors.gray2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "${value.toStringAsFixed(1)}${type.getValueUnit()}",
              style: SsentifTextStyles.medium12.copyWith(
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBodyCompositionChart() {
    if (_bodyCompositionData == null) {
      return const SizedBox.shrink();
    }

    BodyCompositionAnalysisEntity entity;
    switch (_selectedBodyCompositionType) {
      case BodyCompositionType.weight:
        entity = _bodyCompositionData!.weightInfo;
        break;
      case BodyCompositionType.skeletalMuscle:
        entity = _bodyCompositionData!.skeletalMuscleMassInfo;
        break;
      case BodyCompositionType.fat:
        entity = _bodyCompositionData!.bodyFatInfo;
        break;
      case BodyCompositionType.bodyFatPercentage:
        entity = _bodyCompositionData!.bodyFatPercentageInfo;
        break;
    }

    final chartData = entity.dateAndInfoList;
    final unit = _selectedBodyCompositionType.getValueUnit();

    if (chartData.isEmpty) {
      return Center(
        child: Text(
          Intl.message("empty_recent_body_composition"),
          style: SsentifTextStyles.medium16.copyWith(
            color: AppColors.gray2,
          ),
        ),
      );
    }

    // 데이터 정렬 (날짜 기준)
    final sortedData = List<BodyCompositionValueEntity>.from(chartData)
      ..sort((a, b) => a.createdDate.compareTo(b.createdDate));

    // X축 범위 계산 (인덱스 사용)
    final xValues = sortedData
        .asMap()
        .entries
        .map((entry) => entry.key.toDouble())
        .toList();
    final minX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a < b ? a : b) : 0.0;
    final maxX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a > b ? a : b) : 1.0;

    // Y축 범위 계산
    final yValues = sortedData.map((e) => e.information).toList();
    final minValue =
        yValues.isNotEmpty ? yValues.reduce((a, b) => a < b ? a : b) : 0.0;
    final maxValue =
        yValues.isNotEmpty ? yValues.reduce((a, b) => a > b ? a : b) : 0.0;

    // Y축 간격을 먼저 계산 (데이터 범위 기준)
    final dataRange = maxValue - minValue;
    double interval;
    double minY;
    double maxY;

    if (dataRange == 0) {
      // 모든 값이 동일한 경우
      final singleValue = minValue;
      interval = singleValue > 0 ? singleValue / 2 : 1.0;
      if (interval < 0.1) interval = 0.1; // 최소 간격 보장

      // 단일 값 기준으로 범위 설정
      minY = singleValue > interval ? singleValue - interval : 0.0;
      maxY = singleValue + interval;
    } else {
      // 일반적인 경우
      final rawInterval = dataRange / 4; // 4등분으로 간격 계산
      interval = _calculateNiceInterval(rawInterval);

      // Y축 범위를 interval의 배수로 조정 (최대/최소값에서 라벨이 겹치지 않도록)
      final adjustedMinY = (minValue / interval).floor() * interval;
      final adjustedMaxY = (maxValue / interval).ceil() * interval;

      // 여유 공간 추가 (위아래로 interval 하나씩)
      minY = adjustedMinY > interval ? adjustedMinY - interval : 0.0;
      maxY = adjustedMaxY + interval;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.gray4, width: 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    _selectedBodyCompositionType.getTypeString(),
                    style: SsentifTextStyles.medium14.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "${_getCurrentValue(_selectedBodyCompositionType).toStringAsFixed(1)}$unit",
                    style: SsentifTextStyles.medium14.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: false,
                      horizontalInterval: interval,
                      getDrawingHorizontalLine: (value) {
                        return FlLine(
                          color: AppColors.gray4,
                          strokeWidth: 1,
                        );
                      },
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 40,
                          interval: sortedData.length > 1
                              ? (maxX - minX) / (sortedData.length - 1)
                              : 1.0,
                          getTitlesWidget: (value, meta) {
                            final index = value.toInt();
                            if (index >= 0 && index < sortedData.length) {
                              final date = sortedData[index].createdDate;
                              try {
                                final parts = date.split('-');
                                if (parts.length >= 2) {
                                  final month = parts[1];
                                  return Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, right: 4),
                                    child: Text(
                                      '$month월',
                                      style:
                                          SsentifTextStyles.regular10.copyWith(
                                        color: AppColors.gray2,
                                      ),
                                    ),
                                  );
                                }
                              } catch (e) {
                                // 날짜 파싱 실패
                              }
                            }
                            return const Text('');
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 45,
                          interval: interval,
                          getTitlesWidget: (value, meta) {
                            // 최대값 근처에서는 표시하지 않음 (겹침 방지)
                            // 단, 모든 값이 동일한 경우(dataRange == 0)에는 최대/최소값도 표시
                            final currentDataRange = maxValue - minValue;
                            if (currentDataRange > 0 &&
                                (meta.max - value).abs() < interval * 0.1) {
                              return const SizedBox.shrink();
                            }
                            // 최소값 근처에서는 표시하지 않음 (단, 0 근처가 아닌 경우에만)
                            if (currentDataRange > 0 &&
                                value > interval * 0.5 &&
                                (meta.min - value).abs() < interval * 0.1) {
                              return const SizedBox.shrink();
                            }
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                '${value.toStringAsFixed(1)}$unit',
                                style: SsentifTextStyles.regular10.copyWith(
                                  color: AppColors.gray2,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: Border(
                        bottom: BorderSide(color: AppColors.gray3, width: 1),
                        left: BorderSide(color: AppColors.gray3, width: 1),
                      ),
                    ),
                    minX: minX,
                    maxX: maxX,
                    minY: minY,
                    maxY: maxY,
                    lineBarsData: [
                      LineChartBarData(
                        spots: sortedData.asMap().entries.map((entry) {
                          return FlSpot(
                              entry.key.toDouble(), entry.value.information);
                        }).toList(),
                        isCurved: true,
                        color: AppColors.primary,
                        barWidth: 2,
                        isStrokeCapRound: true,
                        curveSmoothness: 0.2,
                        dotData: FlDotData(
                          show: true,
                          getDotPainter: (spot, percent, barData, index) {
                            return FlDotCirclePainter(
                              radius: 4,
                              color: AppColors.primary,
                              strokeWidth: 2,
                              strokeColor: AppColors.white,
                            );
                          },
                          checkToShowDot: (spot, barData) {
                            return true; // 항상 dot 표시
                          },
                        ),
                        preventCurveOverShooting: true,
                        preventCurveOvershootingThreshold: 0.1,
                        belowBarData: BarAreaData(
                          show: true,
                          color: AppColors.primary.withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildComparisonText(
                    title: Intl.message("compare_to_first"),
                    value: entity.compareToFirstInfo,
                    unit: unit,
                  ),
                  const SizedBox(width: 50),
                  _buildComparisonText(
                    title: Intl.message("compare_to_previous"),
                    value: entity.compareToPreviousInfo,
                    unit: unit,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildComparisonText({
    required String title,
    required String value,
    required String unit,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: SsentifTextStyles.regular12.copyWith(
            color: AppColors.gray2,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "$value$unit",
          style: SsentifTextStyles.medium12.copyWith(
            color: AppColors.black,
          ),
        ),
      ],
    );
  }

  double _calculateNiceInterval(double rawInterval) {
    if (rawInterval <= 0) return 1.0;

    final magnitude = math.pow(10, (math.log(rawInterval) / math.ln10).floor());
    final normalized = rawInterval / magnitude;

    double niceValue;
    if (normalized <= 1.0) {
      niceValue = 1.0;
    } else if (normalized <= 2.0) {
      niceValue = 2.0;
    } else if (normalized <= 5.0) {
      niceValue = 5.0;
    } else {
      niceValue = 10.0;
    }

    return niceValue * magnitude;
  }

  Map<DateTime, List<EventType>> _getEventsFromCalendar() {
    if (widget.clientCalendar?.events == null) {
      return {};
    }

    Map<DateTime, List<EventType>> eventsByDate = {};

    for (var event in widget.clientCalendar!.events) {
      final date = DateTime(event.startDateTime.year, event.startDateTime.month,
          event.startDateTime.day);

      if (!eventsByDate.containsKey(date)) {
        eventsByDate[date] = [];
      }

      // CalendarEventEntity의 eventType을 EventType으로 변환
      switch (event.eventType) {
        case ClientCalendarEventType.classEvent:
        case ClientCalendarEventType.reservationCompleteEvent:
          eventsByDate[date]!.add(EventType.reservationComplete);
        case ClientCalendarEventType.classCompleteEvent:
          eventsByDate[date]!.add(EventType.attendance);
          break;
        case ClientCalendarEventType.classRequestEvent:
          eventsByDate[date]!.add(EventType.reservationRequest);
          break;
        case ClientCalendarEventType.workoutEvent:
          eventsByDate[date]!.add(EventType.personalExercise);
          break;
        case ClientCalendarEventType.dietEvent:
          eventsByDate[date]!.add(EventType.diet);
          break;
        case ClientCalendarEventType.clientEtcEvent:
          // 기타 이벤트는 무시
          break;
      }
    }

    return eventsByDate;
  }

  Widget _buildDietContent() {
    if (_isLoadingDiet) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth / 3;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _DietMonthSelector(
          key: const ValueKey('diet_month_selector'),
          selectedMonth: widget.selectedMonth,
          onThisMonth: widget.onClickThisMonth,
          onPreviousMonth: widget.onClickPreviousMonth,
          onNextMonth: widget.onClickNextMonth,
        ),
        const SizedBox(height: 15),
        Expanded(
          child: _DietGridView(
            key: ValueKey(
                'diet_grid_${_monthlyDiets.length}_${widget.selectedMonth.millisecondsSinceEpoch}'),
            monthlyDiets: _monthlyDiets,
            imageWidth: imageWidth,
            clientId: widget.clientInfo?.clientId ?? -1,
          ),
        ),
      ],
    );
  }

  Future<void> _loadMonthlyDietData() async {
    if (widget.clientInfo == null) return;

    setState(() {
      _isLoadingDiet = true;
    });

    try {
      final useCase = ref.read(getMonthlyDietUseCaseProvider);
      final result = await useCase.call(
        year: widget.selectedMonth.year,
        month: widget.selectedMonth.month,
        clientId: widget.clientInfo!.clientId,
      );

      if (result.statusType == StatusType.SUCCESS && result.data != null) {
        setState(() {
          _monthlyDiets = result.data!;
          _isLoadingDiet = false;
        });
      } else {
        setState(() {
          _isLoadingDiet = false;
        });
      }
    } catch (e) {
      setState(() {
        _isLoadingDiet = false;
      });
    }
  }

  Widget _buildMembershipContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '발급된 수강권',
            style: SsentifTextStyles.medium18.copyWith(
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 16),
          // 수강권 리스트
          SizedBox(
            height: 190,
            child: _isLoadingVoucher
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : _vouchers.isEmpty
                    ? Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.gray4, width: 1),
                        ),
                        child: Center(
                          child: Text(
                            '수강권이 없습니다',
                            style: SsentifTextStyles.medium16.copyWith(
                              color: AppColors.gray2,
                            ),
                          ),
                        ),
                      )
                    : Listener(
                        onPointerSignal: (event) {
                          if (event is PointerScrollEvent) {
                            // 마우스 휠 이벤트 처리 - 브라우저 앞/뒤로 가기 방지
                            if (event.scrollDelta.dx != 0) {
                              _voucherScrollController.position.moveTo(
                                (_voucherScrollController.position.pixels -
                                        event.scrollDelta.dx)
                                    .clamp(
                                        0.0,
                                        _voucherScrollController
                                            .position.maxScrollExtent),
                              );
                            }
                          }
                        },
                        child: GestureDetector(
                          onPanUpdate: (details) {
                            // 마우스 드래그 스크롤 처리
                            if (_voucherScrollController.hasClients) {
                              _voucherScrollController.position.moveTo(
                                (_voucherScrollController.position.pixels -
                                        details.delta.dx)
                                    .clamp(
                                        0.0,
                                        _voucherScrollController
                                            .position.maxScrollExtent),
                              );
                            }
                          },
                          child: SingleChildScrollView(
                            controller: _voucherScrollController,
                            scrollDirection: Axis.horizontal,
                            physics: const ClampingScrollPhysics(),
                            child: Row(
                              children: _vouchers.map((voucher) {
                                return _buildVoucherItem(voucher);
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
          ),
          const SizedBox(height: 20),
          // 수강 이력
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '수강 이력',
                    style: SsentifTextStyles.medium18.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  if (_voucherHistories.isNotEmpty &&
                      _getTotalHistoryPages() > 1)
                    Row(
                      children: _buildPageNumberButtons(),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              _isLoadingVoucherHistory
                  ? const Center(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : _voucherHistories.isEmpty
                      ? Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: AppColors.gray4, width: 1),
                          ),
                          child: Center(
                            child: Text(
                              '수강 이력이 없습니다',
                              style: SsentifTextStyles.medium16.copyWith(
                                color: AppColors.gray2,
                              ),
                            ),
                          ),
                        )
                      : Column(
                          children: _getPaginatedHistories()
                              .asMap()
                              .entries
                              .map((entry) {
                            final index = entry.key;
                            final history = entry.value;
                            // 전체 리스트에서의 인덱스 계산 (역순이므로)
                            final globalIndex = (_currentHistoryPage - 1) *
                                    _historyItemsPerPage +
                                index;
                            final order =
                                _voucherHistories.length - globalIndex;
                            return _buildVoucherHistoryItem(
                              history: history,
                              order: order,
                            );
                          }).toList(),
                        ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVoucherItem(VoucherEntity voucher) {
    const double cardWidth = 310;
    const double cardHeight = 190;
    final isSelected = _selectedVoucher?.voucherId == voucher.voucherId;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedVoucher = voucher;
        });
        _loadVoucherHistoryData();
      },
      child: Container(
        width: cardWidth,
        height: cardHeight,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // 배경 이미지
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                VoucherColorType.getCardAsset(voucher.voucherColorType),
                width: cardWidth,
                height: cardHeight,
                fit: BoxFit.fill,
              ),
            ),
            // 수강권 정보 텍스트
            Positioned(
              top: 16,
              left: 16,
              right: 16,
              bottom: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          voucher.voucherName,
                          style: SsentifTextStyles.bold20.copyWith(
                            color: AppColors.white,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: "회당",
                                style: SsentifTextStyles.regular14
                                    .copyWith(color: AppColors.white),
                                children: [
                                  TextSpan(
                                      text: " ${voucher.feePerSession}원",
                                      style: SsentifTextStyles.medium18
                                          .copyWith(color: AppColors.white))
                                ]),
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                                text: "판매",
                                style: SsentifTextStyles.regular14
                                    .copyWith(color: AppColors.white),
                                children: [
                                  TextSpan(
                                      text: " ${voucher.priceOfVoucher}원",
                                      style: SsentifTextStyles.medium18
                                          .copyWith(color: AppColors.white))
                                ]),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '수강권 총 횟수',
                              style: SsentifTextStyles.regular12.copyWith(
                                color: AppColors.white,
                              ),
                              children: [
                                const TextSpan(text: '   '),
                                TextSpan(
                                  text: '${voucher.totalCount}회',
                                  style: SsentifTextStyles.medium16.copyWith(
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          RichText(
                            text: TextSpan(
                              text: '수업 진행 횟수',
                              style: SsentifTextStyles.regular12.copyWith(
                                color: AppColors.white,
                              ),
                              children: [
                                const TextSpan(text: '   '),
                                TextSpan(
                                  text:
                                      '${voucher.totalCount - voucher.remainCount}회',
                                  style: SsentifTextStyles.medium16.copyWith(
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          RichText(
                            text: TextSpan(
                              text: '출석 미완료 횟수',
                              style: SsentifTextStyles.regular12.copyWith(
                                color: AppColors.white,
                              ),
                              children: [
                                const TextSpan(text: '   '),
                                TextSpan(
                                  text:
                                      '${voucher.remainCount - voucher.reservationCount}회',
                                  style: SsentifTextStyles.medium16.copyWith(
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          RichText(
                            text: TextSpan(
                              text: '예약 가능 횟수',
                              style: SsentifTextStyles.regular12.copyWith(
                                color: AppColors.white,
                              ),
                              children: [
                                const TextSpan(text: '   '),
                                TextSpan(
                                  text: '${voucher.reservationCount}회',
                                  style: SsentifTextStyles.medium16.copyWith(
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // 만료된 수강권 오버레이
            if (voucher.voucherStatusType == VoucherStatusType.complete)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.black.withOpacity(0.15),
                ),
                child: Center(
                  child: Text(
                    S.of(context).expired_voucher,
                    style: SsentifTextStyles.medium14.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            // 선택된 수강권 체크 아이콘
            if (isSelected)
              Positioned(
                top: 12,
                right: 12,
                child: Image.asset(
                  Assets.images.icSelectedCheck.path,
                  width: 24,
                  height: 24,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildVoucherHistoryItem({
    required VoucherHistoryEntity history,
    required int order,
  }) {
    // 날짜 포맷 변환 (yyyy-MM-dd -> yyyy년 MM월 dd일 E요일)
    final formattedDate = history.classStartDate.convertDateFormat(
      formatBefore: Constants.dateFormat,
      formatAfter: Constants.localizationDateFormat(),
    );
    // 시간은 그대로 사용 (이미 HH:mm 형식일 것으로 예상)
    final dateTimeText = '$formattedDate ${history.time}';

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.gray4, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 회차 원형 인덱스
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
                alignment: Alignment.center,
                child: Text(
                  '$order',
                  style: SsentifTextStyles.medium12.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // 날짜/시간 텍스트
              Expanded(
                child: Text(
                  dateTimeText,
                  style: SsentifTextStyles.medium14.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // 차감 텍스트
              Text(
                S.of(context).deduct,
                style: SsentifTextStyles.medium16.copyWith(
                  color: AppColors.modalTextRed,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _loadVoucherData() async {
    if (widget.clientInfo == null) return;

    setState(() {
      _isLoadingVoucher = true;
    });

    try {
      final useCase = ref.read(getClientVoucherListUseCaseProvider);
      final result = await useCase.call(
        clientId: widget.clientInfo!.clientId,
        active: false,
      );

      if (result.statusType == StatusType.SUCCESS && result.data != null) {
        final vouchers = result.data!;
        // complete 상태인 수강권들을 뒤로 정렬
        vouchers.sort((a, b) {
          final aIsComplete = a.voucherStatusType == VoucherStatusType.complete;
          final bIsComplete = b.voucherStatusType == VoucherStatusType.complete;
          if (aIsComplete && !bIsComplete) return 1;
          if (!aIsComplete && bIsComplete) return -1;
          return 0;
        });
        setState(() {
          _vouchers = vouchers;
          // 첫 번째 수강권으로 초기화
          _selectedVoucher = vouchers.isNotEmpty ? vouchers.first : null;
          _isLoadingVoucher = false;
        });
        // 선택된 수강권의 이력 로드
        if (_selectedVoucher != null) {
          _loadVoucherHistoryData();
        }
      } else {
        setState(() {
          _isLoadingVoucher = false;
        });
      }
    } catch (e) {
      setState(() {
        _isLoadingVoucher = false;
      });
    }
  }

  Future<void> _loadVoucherHistoryData() async {
    if (_selectedVoucher == null || _selectedVoucher!.voucherMatchingId == -1) {
      setState(() {
        _voucherHistories = [];
        _isLoadingVoucherHistory = false;
      });
      return;
    }

    setState(() {
      _isLoadingVoucherHistory = true;
    });

    try {
      final useCase = ref.read(getClientVoucherHistoriesUseCaseProvider);
      final result = await useCase.call(
        voucherMatchingId: _selectedVoucher!.voucherMatchingId,
      );

      if (result.statusType == StatusType.SUCCESS && result.data != null) {
        setState(() {
          _voucherHistories = result.data!;
          _currentHistoryPage = 1; // 데이터 로드 시 첫 페이지로 리셋
          _isLoadingVoucherHistory = false;
        });
      } else {
        setState(() {
          _isLoadingVoucherHistory = false;
        });
      }
    } catch (e) {
      setState(() {
        _isLoadingVoucherHistory = false;
      });
    }
  }

  List<Widget> _buildPageNumberButtons() {
    final totalPages = _getTotalHistoryPages();
    final List<Widget> buttons = [];

    // 최대 5개 페이지 번호만 표시
    int startPage = math.max(1, _currentHistoryPage - 2);
    int endPage = math.min(totalPages, startPage + 4);

    // 끝에서 시작하는 경우 조정
    if (endPage - startPage < 4) {
      startPage = math.max(1, endPage - 4);
    }

    // 이전 버튼
    if (startPage > 1) {
      buttons.add(
        GestureDetector(
          onTap: () {
            setState(() {
              _currentHistoryPage = startPage - 1;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: AppColors.gray4, width: 1),
            ),
            child: Text(
              '<',
              style: SsentifTextStyles.medium12.copyWith(
                color: AppColors.black,
              ),
            ),
          ),
        ),
      );
      buttons.add(const SizedBox(width: 4));
    }

    // 페이지 번호 버튼들
    for (int i = startPage; i <= endPage; i++) {
      final isSelected = i == _currentHistoryPage;
      buttons.add(
        GestureDetector(
          onTap: () {
            setState(() {
              _currentHistoryPage = i;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary : AppColors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: isSelected ? AppColors.primary : AppColors.gray4,
                width: 1,
              ),
            ),
            child: Text(
              '$i',
              style: SsentifTextStyles.medium12.copyWith(
                color: isSelected ? AppColors.white : AppColors.black,
              ),
            ),
          ),
        ),
      );
      if (i < endPage) {
        buttons.add(const SizedBox(width: 4));
      }
    }

    // 다음 버튼
    if (endPage < totalPages) {
      buttons.add(const SizedBox(width: 4));
      buttons.add(
        GestureDetector(
          onTap: () {
            setState(() {
              _currentHistoryPage = endPage + 1;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: AppColors.gray4, width: 1),
            ),
            child: Text(
              '>',
              style: SsentifTextStyles.medium12.copyWith(
                color: AppColors.black,
              ),
            ),
          ),
        ),
      );
    }

    return buttons;
  }

  List<VoucherHistoryEntity> _getPaginatedHistories() {
    final startIndex = (_currentHistoryPage - 1) * _historyItemsPerPage;
    final endIndex = startIndex + _historyItemsPerPage;
    if (startIndex >= _voucherHistories.length) {
      return [];
    }
    return _voucherHistories.sublist(
      startIndex,
      endIndex > _voucherHistories.length ? _voucherHistories.length : endIndex,
    );
  }

  int _getTotalHistoryPages() {
    if (_voucherHistories.isEmpty) return 1;
    return (_voucherHistories.length / _historyItemsPerPage).ceil();
  }

  @override
  void dispose() {
    _voucherScrollController.dispose();
    super.dispose();
  }
}

class _DietMonthSelector extends StatefulWidget {
  final DateTime selectedMonth;
  final VoidCallback onThisMonth;
  final VoidCallback onPreviousMonth;
  final VoidCallback onNextMonth;

  const _DietMonthSelector({
    super.key,
    required this.selectedMonth,
    required this.onThisMonth,
    required this.onPreviousMonth,
    required this.onNextMonth,
  });

  @override
  State<_DietMonthSelector> createState() => _DietMonthSelectorState();
}

class _DietMonthSelectorState extends State<_DietMonthSelector> {
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: MonthSelectorWidget(
        selectedMonth: widget.selectedMonth,
        onThisMonth: widget.onThisMonth,
        onPreviousMonth: widget.onPreviousMonth,
        onNextMonth: widget.onNextMonth,
      ),
    );
  }
}

class _DietGridView extends StatelessWidget {
  final List<UploadedDietEntity> monthlyDiets;
  final double imageWidth;
  final int clientId;

  const _DietGridView({
    super.key,
    required this.monthlyDiets,
    required this.imageWidth,
    required this.clientId,
  });

  @override
  Widget build(BuildContext context) {
    if (monthlyDiets.isEmpty) {
      return Container(
        height: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.gray4, width: 1),
        ),
        child: Text(
          Intl.message("empty_diet_list"),
          style: SsentifTextStyles.medium16.copyWith(
            color: AppColors.gray3,
          ),
        ),
      );
    }

    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: monthlyDiets.length,
      itemBuilder: (BuildContext context, int index) {
        var diet = monthlyDiets[index];
        return GestureDetector(
          onTap: () {
            if (diet.dietId != null && diet.dietId! > 0) {
              final dietIds = monthlyDiets
                  .where((d) => d.dietId != null && d.dietId! > 0)
                  .map((d) => d.dietId!)
                  .toList();
              DietDetailDialog.show(
                context,
                clientId: clientId,
                dietIds: dietIds,
                initialDietId: diet.dietId!,
              );
            }
          },
          child: Stack(
            fit: StackFit.expand,
            children: [
              diet.pictures.isNotEmpty
                  ? Image.network(
                      diet.pictures.first.remoteUrl,
                      width: imageWidth,
                      height: imageWidth,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: imageWidth,
                          height: imageWidth,
                          color: AppColors.gray4,
                          child: const Icon(
                            Icons.restaurant,
                            size: 40,
                            color: AppColors.gray2,
                          ),
                        );
                      },
                    )
                  : Container(
                      width: imageWidth,
                      height: imageWidth,
                      color: AppColors.gray4,
                      child: const Icon(
                        Icons.restaurant,
                        size: 40,
                        color: AppColors.gray2,
                      ),
                    ),
              Container(
                width: imageWidth,
                height: imageWidth,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.white,
                    width: 0.5,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.blackAlpha30,
                      diet.pictures.isNotEmpty
                          ? AppColors.transparent
                          : AppColors.blackAlpha30,
                    ],
                  ),
                ),
              ),
              if (diet.pictures.length > 1)
                Center(
                  child: Text(
                    "+ ${diet.pictures.length}",
                    style: SsentifTextStyles.medium22.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              Positioned(
                top: 5,
                left: 5,
                child: Text(
                  diet.date,
                  style: SsentifTextStyles.medium12.copyWith(
                    color: AppColors.backgroundColor,
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: diet.feedbackTag.getTagSelectedImage().isNotEmpty
                    ? Image.asset(
                        diet.feedbackTag.getTagSelectedImage(),
                        width: 56,
                        height: 56,
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        );
      },
    );
  }
}
