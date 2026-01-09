import 'dart:math' as math;
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_routine_ratio_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_repurchase_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_new_registration_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_review_average_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/monthly_indicator_detail_dialog.dart';

class MonthlyIndicatorChartWidget extends StatelessWidget {
  final DashboardStatType selectedStatType;
  final List<MonthlyScheduleCountEntity> monthlyScheduleCounts;
  final List<MonthlyRoutineRatioEntity> monthlyRoutineRatios;
  final List<MonthlyRepurchaseCountEntity> monthlyRepurchaseCounts;
  final List<MonthlyScheduleReviewAverageEntity> monthlyScheduleReviewAverages;
  final List<MonthlyNewRegistrationCountEntity> monthlyNewRegistrationCounts;

  const MonthlyIndicatorChartWidget({
    super.key,
    required this.selectedStatType,
    required this.monthlyScheduleCounts,
    required this.monthlyRoutineRatios,
    required this.monthlyRepurchaseCounts,
    required this.monthlyScheduleReviewAverages,
    required this.monthlyNewRegistrationCounts,
  });

  void _showDetailDialog(BuildContext context) {
    MonthlyIndicatorDetailDialog.show(
      context,
      selectedStatType: selectedStatType,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '최근 6개월 지표 변화',
                style: SsentifTextStyles.bold16(context).copyWith(
                  color: AppColors.black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showDetailDialog(context);
                },
                child: Text(
                  '자세히',
                  style: SsentifTextStyles.medium14(context).copyWith(
                    color: AppColors.gray1,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: selectedStatType == DashboardStatType.totalClassCount
                ? _buildLineChart(context, unit: selectedStatType.unit)
                : selectedStatType == DashboardStatType.recordWritingRate
                    ? _buildRoutineRatioChart(context, unit: selectedStatType.unit)
                    : selectedStatType == DashboardStatType.reenrollment
                        ? _buildRepurchaseCountChart(context,
                            unit: selectedStatType.unit)
                        : selectedStatType ==
                                DashboardStatType.customerSatisfaction
                            ? _buildSatisfactionChart(context,
                                unit: selectedStatType.unit)
                            : selectedStatType ==
                                    DashboardStatType.newlyRegistration
                                ? _buildNewRegistrationChart(context,
                                    unit: selectedStatType.unit)
                                : const SizedBox(),
          ),
        ],
      ),
    );
  }

  Widget _buildLineChart(BuildContext context, {required String unit}) {
    // 데이터 정렬 (yearMonth 기준)
    final sortedData = List<MonthlyScheduleCountEntity>.from(
      monthlyScheduleCounts,
    )..sort((a, b) => a.yearMonth.compareTo(b.yearMonth));

    // 디버그: 데이터 확인
    if (sortedData.isNotEmpty) {
      debugPrint(
          'Chart data: ${sortedData.map((e) => '${e.yearMonth}: ${e.count}').join(', ')}');
    }

    // 데이터가 비어있을 때 기본 차트 표시 (빈 차트)
    if (sortedData.isEmpty) {
      return LineChart(
        LineChartData(
          gridData: FlGridData(
            show: false,
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
                reservedSize: 30,
                getTitlesWidget: (value, meta) {
                  return const Text('');
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
                getTitlesWidget: (value, meta) {
                  return Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                      '${value.toInt()}$unit',
                      style: SsentifTextStyles.regular10(context).copyWith(
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
          minX: 0,
          maxX: 5,
          minY: 0,
          maxY: 100,
          lineBarsData: [],
        ),
      );
    }

    // yearMonth를 숫자로 변환하는 함수 (YYYY-MM -> YYYY.MM 형태)
    double _yearMonthToDouble(String yearMonth) {
      final parts = yearMonth.split('-');
      if (parts.length == 2) {
        final year = double.parse(parts[0]);
        final month = double.parse(parts[1]);
        return year + (month / 12.0);
      }
      return 0.0;
    }

    // X축 범위 계산 (yearMonth를 숫자로 변환)
    final xValues =
        sortedData.map((e) => _yearMonthToDouble(e.yearMonth)).toList();
    final minX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a < b ? a : b) : 0.0;
    final maxX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a > b ? a : b) : 1.0;

    // Y축 범위 계산
    final yValues = sortedData.map((e) => e.count.toDouble()).toList();
    final minCount =
        yValues.isNotEmpty ? yValues.reduce((a, b) => a < b ? a : b) : 0.0;
    final maxCount =
        yValues.isNotEmpty ? yValues.reduce((a, b) => a > b ? a : b) : 0.0;

    // 최대값에 30% 여유 공간 추가 (예: 100 -> 130)
    final maxY = maxCount * 1.3;

    // 최소값: 50 미만이면 0, 50 이상이면 20
    final minY = minCount >= 50 ? 20.0 : 0.0;

    // Y축 간격을 적절한 단위로 계산 (5등분 후 적절한 단위로 반올림)
    final rawInterval = (maxY - minY) / 5;
    final interval = _calculateNiceInterval(rawInterval);

    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: interval,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: AppColors.gray3,
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
                // 최대값일 때는 표시하지 않음 (우측 끝 잘림 방지)
                if ((meta.max - value).abs() < 0.01) {
                  return const SizedBox.shrink();
                }
                // value에 가장 가까운 yearMonth 찾기 (더 정확한 매칭)
                double minDiff = double.infinity;
                int closestIndex = -1;
                for (int i = 0; i < xValues.length; i++) {
                  final diff = (xValues[i] - value).abs();
                  if (diff < minDiff) {
                    minDiff = diff;
                    closestIndex = i;
                  }
                }
                if (closestIndex >= 0 &&
                    closestIndex < sortedData.length &&
                    minDiff < 0.2) {
                  final yearMonth = sortedData[closestIndex].yearMonth;
                  final parts = yearMonth.split('-');
                  if (parts.length == 2) {
                    final month = parts[1];
                    return Padding(
                      padding: const EdgeInsets.only(top: 8, right: 4),
                      child: Text(
                        '$month월',
                        style: SsentifTextStyles.regular10(context).copyWith(
                          color: AppColors.gray2,
                        ),
                      ),
                    );
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
                // 최대값일 때는 표시하지 않음 (중복 방지)
                if ((meta.max - value).abs() < 0.01) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    '${value.toInt()}$unit',
                    style: SsentifTextStyles.regular10(context).copyWith(
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
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (List<LineBarSpot> touchedSpots) {
              return touchedSpots.map((LineBarSpot touchedSpot) {
                return LineTooltipItem(
                  '${touchedSpot.y.toInt()}건',
                  SsentifTextStyles.regular12(context).copyWith(
                    color: AppColors.white,
                  ),
                );
              }).toList();
            },
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: sortedData.map((e) {
              final x = _yearMonthToDouble(e.yearMonth);
              final y = e.count.toDouble();
              return FlSpot(x, y);
            }).toList(),
            isCurved: true,
            color: AppColors.subColorBlue,
            barWidth: 4,
            isStrokeCapRound: true,
            curveSmoothness: 0.35,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 5,
                  color: AppColors.subColorBlue,
                  strokeWidth: 3,
                  strokeColor: AppColors.white,
                );
              },
            ),
            preventCurveOverShooting: true,
            preventCurveOvershootingThreshold: 0.1,
            belowBarData: BarAreaData(
              show: true,
              color: AppColors.subColorBlue.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewRegistrationChart(BuildContext context, {required String unit}) {
    final sortedData = List<MonthlyNewRegistrationCountEntity>.from(
      monthlyNewRegistrationCounts,
    )..sort((a, b) => a.yearMonth.compareTo(b.yearMonth));

    if (sortedData.isEmpty) {
      return LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [],
          minX: 0,
          maxX: 5,
          minY: 0,
          maxY: 1,
        ),
      );
    }

    // yearMonth를 숫자로 변환하는 함수 (YYYY-MM -> YYYY.MM 형태)
    double _yearMonthToDouble(String yearMonth) {
      final parts = yearMonth.split('-');
      if (parts.length == 2) {
        final year = double.parse(parts[0]);
        final month = double.parse(parts[1]);
        return year + (month / 12.0);
      }
      return 0.0;
    }

    // X축 범위 계산 (yearMonth를 숫자로 변환)
    final xValues =
        sortedData.map((e) => _yearMonthToDouble(e.yearMonth)).toList();
    final minX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a < b ? a : b) : 0.0;
    final maxX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a > b ? a : b) : 1.0;

    // Y축 범위 계산
    final yValues = sortedData.map((e) => e.count.toDouble()).toList();
    final minCount =
        yValues.isNotEmpty ? yValues.reduce((a, b) => a < b ? a : b) : 0.0;
    final maxCount =
        yValues.isNotEmpty ? yValues.reduce((a, b) => a > b ? a : b) : 0.0;

    final maxY = maxCount * 1.3;
    final minY = minCount >= 50 ? 20.0 : 0.0;

    final rawInterval = (maxY - minY) / 5;
    final interval = _calculateNiceInterval(rawInterval);

    return LineChart(
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
                double minDiff = double.infinity;
                int closestIndex = -1;
                for (int i = 0; i < xValues.length; i++) {
                  final diff = (xValues[i] - value).abs();
                  if (diff < minDiff) {
                    minDiff = diff;
                    closestIndex = i;
                  }
                }
                if (closestIndex >= 0 &&
                    closestIndex < sortedData.length &&
                    minDiff < 0.2) {
                  final yearMonth = sortedData[closestIndex].yearMonth;
                  final parts = yearMonth.split('-');
                  if (parts.length == 2) {
                    final month = parts[1];
                    // 최대값일 때는 우측 padding을 더 크게
                    final isMax = (meta.max - value).abs() < 0.01;
                    return Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        right: isMax ? 8 : 4,
                      ),
                      child: Text(
                        '$month월',
                        style: SsentifTextStyles.regular10(context).copyWith(
                          color: AppColors.gray2,
                        ),
                      ),
                    );
                  }
                }
                return const Text('');
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50,
              interval: interval,
              getTitlesWidget: (value, meta) {
                // 최대값일 때는 표시하지 않음 (중복 방지)
                if ((meta.max - value).abs() < 0.01) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    '${value.toInt()}$unit',
                    style: SsentifTextStyles.regular10(context).copyWith(
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
            bottom: BorderSide(color: AppColors.gray4, width: 1),
            left: BorderSide(color: AppColors.gray4, width: 1),
          ),
        ),
        minX: minX,
        maxX: maxX,
        minY: minY,
        maxY: maxY,
        lineBarsData: [
          LineChartBarData(
            spots: sortedData.map((e) {
              final x = _yearMonthToDouble(e.yearMonth);
              final y = e.count.toDouble();
              return FlSpot(x, y);
            }).toList(),
            isCurved: true,
            curveSmoothness: 0.2,
            preventCurveOverShooting: true,
            color: selectedStatType.selectedColor,
            barWidth: 3,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 3,
                  color: AppColors.white,
                  strokeWidth: 2,
                  strokeColor: selectedStatType.selectedColor,
                );
              },
            ),
            belowBarData: BarAreaData(
              show: true,
              color: selectedStatType.selectedColor.withOpacity(0.1),
            ),
          ),
        ],
        lineTouchData: LineTouchData(
          enabled: true,
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (spots) {
              return spots.map((spot) {
                return LineTooltipItem(
                  '${spot.y.toInt()}$unit',
                  SsentifTextStyles.regular12(context).copyWith(
                    color: AppColors.white,
                  ),
                );
              }).toList();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildRoutineRatioChart(BuildContext context, {required String unit}) {
    // 데이터 정렬 (yearMonth 기준)
    final sortedData = List<MonthlyRoutineRatioEntity>.from(
      monthlyRoutineRatios,
    )..sort((a, b) => a.yearMonth.compareTo(b.yearMonth));

    // 디버그: 데이터 확인
    if (sortedData.isNotEmpty) {
      debugPrint(
          'Routine Ratio Chart data: ${sortedData.map((e) => '${e.yearMonth}: ${e.ratio}').join(', ')}');
    }

    // 데이터가 비어있을 때 기본 차트 표시 (빈 차트)
    if (sortedData.isEmpty) {
      return LineChart(
        LineChartData(
          gridData: FlGridData(
            show: false,
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
                reservedSize: 30,
                getTitlesWidget: (value, meta) {
                  return const Text('');
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
                interval: 0.2,
                getTitlesWidget: (value, meta) {
                  // 상단 레이블일 때 위쪽 패딩 추가
                  final isTop = (meta.max - value).abs() < 0.01;
                  return Padding(
                    padding: EdgeInsets.only(
                      right: 5,
                      top: isTop ? 2 : 0,
                    ),
                    child: Text(
                      '${(value * 100).toInt()}$unit',
                      style: SsentifTextStyles.regular10(context).copyWith(
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
          minX: 0,
          maxX: 5,
          minY: 0,
          maxY: 1,
          lineBarsData: [],
        ),
      );
    }

    // yearMonth를 숫자로 변환하는 함수 (YYYY-MM -> YYYY.MM 형태)
    double _yearMonthToDouble(String yearMonth) {
      final parts = yearMonth.split('-');
      if (parts.length == 2) {
        final year = double.parse(parts[0]);
        final month = double.parse(parts[1]);
        return year + (month / 12.0);
      }
      return 0.0;
    }

    // X축 범위 계산 (yearMonth를 숫자로 변환)
    final xValues =
        sortedData.map((e) => _yearMonthToDouble(e.yearMonth)).toList();
    final minX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a < b ? a : b) : 0.0;
    final maxX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a > b ? a : b) : 1.0;

    // Y축 범위 계산 (0.0-1.0 범위 고정, 0-100으로 표시)
    final minY = 0.0;
    final maxY = 100.0;

    // Y축 간격 계산 (0.0-1.0 범위이므로 간단하게 5등분)
    final interval = (maxY - minY) / 5;

    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: interval,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: AppColors.gray3,
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
                // value에 가장 가까운 yearMonth 찾기
                double minDiff = double.infinity;
                int closestIndex = -1;
                for (int i = 0; i < xValues.length; i++) {
                  final diff = (xValues[i] - value).abs();
                  if (diff < minDiff) {
                    minDiff = diff;
                    closestIndex = i;
                  }
                }
                if (closestIndex >= 0 &&
                    closestIndex < sortedData.length &&
                    minDiff < 0.2) {
                  final yearMonth = sortedData[closestIndex].yearMonth;
                  final parts = yearMonth.split('-');
                  if (parts.length == 2) {
                    final month = parts[1];
                    // 최대값일 때는 우측 padding을 더 크게
                    final isMax = (meta.max - value).abs() < 0.01;
                    return Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        right: isMax ? 8 : 4,
                      ),
                      child: Text(
                        '$month월',
                        style: SsentifTextStyles.regular10(context).copyWith(
                          color: AppColors.gray2,
                        ),
                      ),
                    );
                  }
                }
                return const Text('');
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 60,
              interval: interval,
              getTitlesWidget: (value, meta) {
                // 최대값일 때는 상단 padding을 더 크게
                final isTop = (meta.max - value).abs() < 0.01;
                return Padding(
                  padding: EdgeInsets.only(
                    right: 5,
                    top: isTop ? 4 : 0,
                  ),
                  child: Text(
                    '${(value).toInt()}$unit',
                    style: SsentifTextStyles.regular10(context).copyWith(
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
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (List<LineBarSpot> touchedSpots) {
              return touchedSpots.map((LineBarSpot touchedSpot) {
                return LineTooltipItem(
                  '${touchedSpot.y.toInt()}%',
                  SsentifTextStyles.regular12(context).copyWith(
                    color: AppColors.white,
                  ),
                );
              }).toList();
            },
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: sortedData.map((e) {
              final x = _yearMonthToDouble(e.yearMonth);
              final y = e.ratio;
              return FlSpot(x, (y * 100).toInt().toDouble());
            }).toList(),
            isCurved: true,
            color: AppColors.subColorRed,
            barWidth: 4,
            isStrokeCapRound: true,
            curveSmoothness: 0.35,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 5,
                  color: AppColors.subColorRed,
                  strokeWidth: 3,
                  strokeColor: AppColors.white,
                );
              },
            ),
            preventCurveOverShooting: true,
            preventCurveOvershootingThreshold: 0.1,
            belowBarData: BarAreaData(
              show: true,
              color: AppColors.subColorRed.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRepurchaseCountChart(BuildContext context, {required String unit}) {
    // 데이터 정렬 (yearMonth 기준)
    final sortedData = List<MonthlyRepurchaseCountEntity>.from(
      monthlyRepurchaseCounts,
    )..sort((a, b) => a.yearMonth.compareTo(b.yearMonth));

    // 디버그: 데이터 확인
    if (sortedData.isNotEmpty) {
      debugPrint(
          'Repurchase Count Chart data: ${sortedData.map((e) => '${e.yearMonth}: ${e.count}').join(', ')}');
    }

    // 데이터가 비어있을 때 기본 차트 표시 (빈 차트)
    if (sortedData.isEmpty) {
      return LineChart(
        LineChartData(
          gridData: FlGridData(
            show: false,
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
                reservedSize: 30,
                getTitlesWidget: (value, meta) {
                  return const Text('');
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
                interval: 20,
                getTitlesWidget: (value, meta) {
                  final isTop = (meta.max - value).abs() < 0.01;
                  return Padding(
                    padding: EdgeInsets.only(
                      right: 5,
                      top: isTop ? 2 : 0,
                    ),
                    child: Text(
                      '${value.toInt()}$unit',
                      style: SsentifTextStyles.regular10(context).copyWith(
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
          minX: 0,
          maxX: 5,
          minY: 0,
          maxY: 100,
          lineBarsData: [],
        ),
      );
    }

    // yearMonth를 숫자로 변환하는 함수 (YYYY-MM -> YYYY.MM 형태)
    double _yearMonthToDouble(String yearMonth) {
      final parts = yearMonth.split('-');
      if (parts.length == 2) {
        final year = double.parse(parts[0]);
        final month = double.parse(parts[1]);
        return year + (month / 12.0);
      }
      return 0.0;
    }

    // X축 범위 계산 (yearMonth를 숫자로 변환)
    final xValues =
        sortedData.map((e) => _yearMonthToDouble(e.yearMonth)).toList();
    final minX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a < b ? a : b) : 0.0;
    final maxX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a > b ? a : b) : 1.0;

    // Y축 범위 계산
    final yValues = sortedData.map((e) => e.count.toDouble()).toList();
    final minCount =
        yValues.isNotEmpty ? yValues.reduce((a, b) => a < b ? a : b) : 0.0;
    final maxCount =
        yValues.isNotEmpty ? yValues.reduce((a, b) => a > b ? a : b) : 0.0;

    // Y축 범위 계산
    // 최대값에 30% 여유 공간 추가 (예: 100 -> 130)
    final maxY = maxCount * 1.3;

    // 최소값: 50 미만이면 0, 50 이상이면 20
    final minY = minCount >= 50 ? 20.0 : 0.0;

    // Y축 간격을 적절한 단위로 계산 (5등분 후 적절한 단위로 반올림)
    final rawInterval = (maxY - minY) / 5;
    final interval = _calculateNiceInterval(rawInterval);

    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: interval,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: AppColors.gray3,
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
                double minDiff = double.infinity;
                int closestIndex = -1;
                for (int i = 0; i < xValues.length; i++) {
                  final diff = (xValues[i] - value).abs();
                  if (diff < minDiff) {
                    minDiff = diff;
                    closestIndex = i;
                  }
                }
                if (closestIndex >= 0 &&
                    closestIndex < sortedData.length &&
                    minDiff < 0.2) {
                  final yearMonth = sortedData[closestIndex].yearMonth;
                  final parts = yearMonth.split('-');
                  if (parts.length == 2) {
                    final month = parts[1];
                    // 최대값일 때는 우측 padding을 더 크게
                    final isMax = (meta.max - value).abs() < 0.01;
                    return Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        right: isMax ? 8 : 4,
                      ),
                      child: Text(
                        '$month월',
                        style: SsentifTextStyles.regular10(context).copyWith(
                          color: AppColors.gray2,
                        ),
                      ),
                    );
                  }
                }
                return const Text('');
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50,
              interval: interval,
              getTitlesWidget: (value, meta) {
                // 최대값일 때는 상단 padding을 더 크게
                final isTop = (meta.max - value).abs() < 0.01;
                return Padding(
                  padding: EdgeInsets.only(
                    right: 5,
                    top: isTop ? 4 : 0,
                  ),
                  child: Text(
                    '${value.toInt()}$unit',
                    style: SsentifTextStyles.regular10(context).copyWith(
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
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (List<LineBarSpot> touchedSpots) {
              return touchedSpots.map((LineBarSpot touchedSpot) {
                return LineTooltipItem(
                  '${touchedSpot.y.toInt()}건',
                  SsentifTextStyles.regular12(context).copyWith(
                    color: AppColors.white,
                  ),
                );
              }).toList();
            },
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: sortedData.map((e) {
              final x = _yearMonthToDouble(e.yearMonth);
              final y = e.count.toDouble();
              return FlSpot(x, y);
            }).toList(),
            isCurved: true,
            color: AppColors.subColorGreen,
            barWidth: 4,
            isStrokeCapRound: true,
            curveSmoothness: 0.35,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 5,
                  color: AppColors.subColorGreen,
                  strokeWidth: 3,
                  strokeColor: AppColors.white,
                );
              },
            ),
            preventCurveOverShooting: true,
            preventCurveOvershootingThreshold: 0.1,
            belowBarData: BarAreaData(
              show: true,
              color: AppColors.subColorGreen.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSatisfactionChart(BuildContext context, {required String unit}) {
    // 데이터 정렬 (yearMonth 기준)
    final sortedData = List<MonthlyScheduleReviewAverageEntity>.from(
      monthlyScheduleReviewAverages,
    )..sort((a, b) => a.yearMonth.compareTo(b.yearMonth));

    // 디버그: 데이터 확인
    if (sortedData.isNotEmpty) {
      debugPrint(
          'Satisfaction Chart data: ${sortedData.map((e) => '${e.yearMonth}: ${e.averageSatisfaction}').join(', ')}');
    }

    // 데이터가 비어있을 때 기본 차트 표시 (빈 차트)
    if (sortedData.isEmpty) {
      return LineChart(
        LineChartData(
          gridData: FlGridData(
            show: false,
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
                reservedSize: 30,
                getTitlesWidget: (value, meta) {
                  return const Text('');
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
                interval: 0.2,
                getTitlesWidget: (value, meta) {
                  final isTop = (meta.max - value).abs() < 0.01;
                  return Padding(
                    padding: EdgeInsets.only(
                      right: 5,
                      top: isTop ? 2 : 0,
                    ),
                    child: Text(
                      '${(value).toInt()}$unit',
                      style: SsentifTextStyles.regular10(context).copyWith(
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
          minX: 0,
          maxX: 5,
          minY: 0,
          maxY: 1.0,
          lineBarsData: [],
        ),
      );
    }

    // yearMonth를 숫자로 변환하는 함수 (YYYY-MM -> YYYY.MM 형태)
    double _yearMonthToDouble(String yearMonth) {
      final parts = yearMonth.split('-');
      if (parts.length == 2) {
        final year = double.parse(parts[0]);
        final month = double.parse(parts[1]);
        return year + (month / 12.0);
      }
      return 0.0;
    }

    // X축 범위 계산 (yearMonth를 숫자로 변환)
    final xValues =
        sortedData.map((e) => _yearMonthToDouble(e.yearMonth)).toList();
    final minX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a < b ? a : b) : 0.0;
    final maxX =
        xValues.isNotEmpty ? xValues.reduce((a, b) => a > b ? a : b) : 1.0;

    // Y축 범위 계산 (0.0-1.0 범위 고정, 0-100으로 표시)
    final minY = 0.0;
    final maxY = 100.0;

    // Y축 간격 계산 (0.0-1.0 범위이므로 간단하게 5등분)
    final interval = (maxY - minY) / 5;

    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: interval,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: AppColors.gray3,
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
                // value에 가장 가까운 yearMonth 찾기
                double minDiff = double.infinity;
                int closestIndex = -1;
                for (int i = 0; i < xValues.length; i++) {
                  final diff = (xValues[i] - value).abs();
                  if (diff < minDiff) {
                    minDiff = diff;
                    closestIndex = i;
                  }
                }
                if (closestIndex >= 0 &&
                    closestIndex < sortedData.length &&
                    minDiff < 0.2) {
                  final yearMonth = sortedData[closestIndex].yearMonth;
                  final parts = yearMonth.split('-');
                  if (parts.length == 2) {
                    final month = parts[1];
                    // 최대값일 때는 우측 padding을 더 크게
                    final isMax = (meta.max - value).abs() < 0.01;
                    return Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        right: isMax ? 8 : 4,
                      ),
                      child: Text(
                        '$month월',
                        style: SsentifTextStyles.regular10(context).copyWith(
                          color: AppColors.gray2,
                        ),
                      ),
                    );
                  }
                }
                return const Text('');
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 60,
              interval: interval,
              getTitlesWidget: (value, meta) {
                // 최대값일 때는 상단 padding을 더 크게
                final isTop = (meta.max - value).abs() < 0.01;
                return Padding(
                  padding: EdgeInsets.only(
                    right: 5,
                    top: isTop ? 4 : 0,
                  ),
                  child: Text(
                    '${(value).toInt()}$unit',
                    style: SsentifTextStyles.regular10(context).copyWith(
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
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (List<LineBarSpot> touchedSpots) {
              return touchedSpots.map((LineBarSpot touchedSpot) {
                return LineTooltipItem(
                  '${touchedSpot.y.toInt()}%',
                  SsentifTextStyles.regular12(context).copyWith(
                    color: AppColors.white,
                  ),
                );
              }).toList();
            },
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: sortedData.map((e) {
              final x = _yearMonthToDouble(e.yearMonth);
              final y = e.averageSatisfaction;
              return FlSpot(x, (y * 100).toInt().toDouble());
            }).toList(),
            isCurved: true,
            color: AppColors.subColorOrange,
            barWidth: 4,
            isStrokeCapRound: true,
            curveSmoothness: 0.35,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 5,
                  color: AppColors.subColorOrange,
                  strokeWidth: 3,
                  strokeColor: AppColors.white,
                );
              },
            ),
            preventCurveOverShooting: true,
            preventCurveOvershootingThreshold: 0.1,
            belowBarData: BarAreaData(
              show: true,
              color: AppColors.subColorOrange.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }

  // Y축 간격을 적절한 단위로 계산하는 헬퍼 함수
  // 최대값이 차트 높이 안에 모두 들어오도록 간격을 조정
  double _calculateNiceInterval(double rawInterval) {
    if (rawInterval <= 0) return 10.0;

    // 10의 거듭제곱으로 정규화
    final magnitude =
        math.pow(10, (math.log(rawInterval) / math.ln10).floor()).toDouble();
    final normalized = rawInterval / magnitude;

    // 적절한 배수로 반올림 (1, 2, 5, 10, 20, 50, 100 등)
    double niceValue;
    if (normalized <= 1) {
      niceValue = 1;
    } else if (normalized <= 2) {
      niceValue = 2;
    } else if (normalized <= 5) {
      niceValue = 5;
    } else {
      niceValue = 10;
    }

    return niceValue * magnitude;
  }
}
