import 'dart:math' as math;
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/core/storage/storage_manager.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/core/utils/date_utils.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/enumtype/dashboard_stat_type.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_routine_ratio_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_repurchase_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_schedule_review_average_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/entity/monthly_new_registration_count_entity.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_monthly_schedule_counts_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_monthly_routine_ratio_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_monthly_repurchase_count_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_monthly_schedule_review_average_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/domain/usecase/get_monthly_new_registration_count_usecase.dart';
import 'package:ssentif_manager_web/features/dashboard/view/viewmodel/dashboard_view_model.dart';

class MonthlyIndicatorDetailDialog extends ConsumerStatefulWidget {
  final DashboardStatType selectedStatType;

  const MonthlyIndicatorDetailDialog({
    super.key,
    required this.selectedStatType,
  });

  static Future<void> show(
    BuildContext context, {
    required DashboardStatType selectedStatType,
  }) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (_) => MonthlyIndicatorDetailDialog(
        selectedStatType: selectedStatType,
      ),
    );
  }

  @override
  ConsumerState<MonthlyIndicatorDetailDialog> createState() =>
      _MonthlyIndicatorDetailDialogState();
}

class _MonthlyIndicatorDetailDialogState
    extends ConsumerState<MonthlyIndicatorDetailDialog> {
  List<MonthlyScheduleCountEntity>? _monthlyScheduleCounts;
  List<MonthlyRoutineRatioEntity>? _monthlyRoutineRatios;
  List<MonthlyRepurchaseCountEntity>? _monthlyRepurchaseCounts;
  List<MonthlyScheduleReviewAverageEntity>? _monthlyScheduleReviewAverages;
  List<MonthlyNewRegistrationCountEntity>? _monthlyNewRegistrationCounts;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final workplaceInfo = StorageManager.getWorkPlaceInfo();
    if (workplaceInfo == null || workplaceInfo.id == -1) {
      setState(() {
        _isLoading = false;
      });
      return;
    }

    final state = ref.read(dashboardViewModelProvider);
    final baseMonth = state.selectedMonth.formatYearMonthHyphen();

    switch (widget.selectedStatType) {
      case DashboardStatType.totalClassCount:
        final useCase = ref.read(getMonthlyScheduleCountsUseCaseProvider);
        final result = await useCase(
          workplaceId: workplaceInfo.id,
          yearMonth: baseMonth,
          months: 12,
        );
        result.handleStatus(
          onSuccess: (data) {
            setState(() {
              _monthlyScheduleCounts = data ?? [];
              _isLoading = false;
            });
          },
          onError: (errCode, errMsg) {
            setState(() {
              _isLoading = false;
            });
          },
        );
        break;
      case DashboardStatType.recordWritingRate:
        final useCase = ref.read(getMonthlyRoutineRatioUseCaseProvider);
        final result = await useCase(
          workplaceId: workplaceInfo.id,
          baseMonth: baseMonth,
          months: 12,
        );
        result.handleStatus(
          onSuccess: (data) {
            setState(() {
              _monthlyRoutineRatios = data ?? [];
              _isLoading = false;
            });
          },
          onError: (errCode, errMsg) {
            setState(() {
              _isLoading = false;
            });
          },
        );
        break;
      case DashboardStatType.reenrollment:
        final useCase = ref.read(getMonthlyRepurchaseCountUseCaseProvider);
        final result = await useCase(
          workplaceId: workplaceInfo.id,
          baseMonth: baseMonth,
          months: 12,
        );
        result.handleStatus(
          onSuccess: (data) {
            setState(() {
              _monthlyRepurchaseCounts = data ?? [];
              _isLoading = false;
            });
          },
          onError: (errCode, errMsg) {
            setState(() {
              _isLoading = false;
            });
          },
        );
        break;
      case DashboardStatType.customerSatisfaction:
        final useCase =
            ref.read(getMonthlyScheduleReviewAverageUseCaseProvider);
        final result = await useCase(
          workplaceId: workplaceInfo.id,
          baseMonth: baseMonth,
          months: 12,
        );
        result.handleStatus(
          onSuccess: (data) {
            setState(() {
              _monthlyScheduleReviewAverages = data ?? [];
              _isLoading = false;
            });
          },
          onError: (errCode, errMsg) {
            setState(() {
              _isLoading = false;
            });
          },
        );
        break;
      case DashboardStatType.newlyRegistration:
        final useCase =
            ref.read(getMonthlyNewRegistrationCountUseCaseProvider);
        final result = await useCase(
          workplaceId: workplaceInfo.id,
          baseMonth: baseMonth,
          months: 12,
        );
        result.handleStatus(
          onSuccess: (data) {
            setState(() {
              _monthlyNewRegistrationCounts = data ?? [];
              _isLoading = false;
            });
          },
          onError: (errCode, errMsg) {
            setState(() {
              _isLoading = false;
            });
          },
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: AppColors.white,
      child: Container(
        width: 900,
        height: 600,
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '최근 12개월 지표 변화',
                  style: SsentifTextStyles.bold20.copyWith(
                    color: AppColors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    color: AppColors.black,
                    size: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _buildChart(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChart() {
    switch (widget.selectedStatType) {
      case DashboardStatType.totalClassCount:
        return _buildLineChart(
          data: _monthlyScheduleCounts ?? [],
          unit: widget.selectedStatType.unit,
        );
      case DashboardStatType.recordWritingRate:
        return _buildRoutineRatioChart(
          data: _monthlyRoutineRatios ?? [],
          unit: widget.selectedStatType.unit,
        );
      case DashboardStatType.reenrollment:
        return _buildRepurchaseCountChart(
          data: _monthlyRepurchaseCounts ?? [],
          unit: widget.selectedStatType.unit,
        );
      case DashboardStatType.customerSatisfaction:
        return _buildSatisfactionChart(
          data: _monthlyScheduleReviewAverages ?? [],
          unit: widget.selectedStatType.unit,
        );
      case DashboardStatType.newlyRegistration:
        return _buildNewRegistrationChart(
          data: _monthlyNewRegistrationCounts ?? [],
          unit: widget.selectedStatType.unit,
        );
    }
  }

  Widget _buildNewRegistrationChart({
    required List<MonthlyNewRegistrationCountEntity> data,
    required String unit,
  }) {
    final sortedData = List<MonthlyNewRegistrationCountEntity>.from(data)
      ..sort((a, b) => a.yearMonth.compareTo(b.yearMonth));

    if (sortedData.isEmpty) {
      return const Center(
        child: Text('데이터가 없습니다.'),
      );
    }

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
              interval: 1,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index >= 0 && index < sortedData.length) {
                  final yearMonth = sortedData[index].yearMonth;
                  try {
                    final date = DateFormat('yyyy-MM').parse(yearMonth);
                    return Padding(
                      padding: const EdgeInsets.only(top: 8, right: 4),
                      child: Text(
                        DateFormat('yy. MM').format(date),
                        style: SsentifTextStyles.regular10.copyWith(
                          color: AppColors.gray2,
                        ),
                      ),
                    );
                  } catch (e) {
                    return const SizedBox.shrink();
                  }
                }
                return const SizedBox.shrink();
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50,
              interval: interval,
              getTitlesWidget: (value, meta) {
                if ((meta.max - value).abs() < 0.01) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    '${value.toInt()}$unit',
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
          border: Border.all(color: AppColors.gray4, width: 1),
        ),
        minX: 0,
        maxX: (sortedData.length - 1).toDouble(),
        minY: minY,
        maxY: maxY,
        lineBarsData: [
          LineChartBarData(
            spots: sortedData.asMap().entries.map((entry) {
              return FlSpot(
                entry.key.toDouble(),
                entry.value.count.toDouble(),
              );
            }).toList(),
            isCurved: true,
            color: widget.selectedStatType.selectedColor,
            barWidth: 2,
            isStrokeCapRound: true,
            curveSmoothness: 0.2,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 3,
                  color: AppColors.white,
                  strokeWidth: 2,
                  strokeColor: widget.selectedStatType.selectedColor,
                );
              },
            ),
            belowBarData: BarAreaData(
              show: true,
              color: widget.selectedStatType.selectedColor.withOpacity(0.1),
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
                  SsentifTextStyles.regular12.copyWith(
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

  Widget _buildLineChart({
    required List<MonthlyScheduleCountEntity> data,
    required String unit,
  }) {
    final sortedData = List<MonthlyScheduleCountEntity>.from(data)
      ..sort((a, b) => a.yearMonth.compareTo(b.yearMonth));

    if (sortedData.isEmpty) {
      return const Center(
        child: Text('데이터가 없습니다.'),
      );
    }

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
              interval: 1,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index >= 0 && index < sortedData.length) {
                  final yearMonth = sortedData[index].yearMonth;
                  try {
                    final date = DateFormat('yyyy-MM').parse(yearMonth);
                    return Padding(
                      padding: const EdgeInsets.only(top: 8, right: 4),
                      child: Text(
                        DateFormat('yy. MM').format(date),
                        style: SsentifTextStyles.regular10.copyWith(
                          color: AppColors.gray2,
                        ),
                      ),
                    );
                  } catch (e) {
                    return const SizedBox.shrink();
                  }
                }
                return const SizedBox.shrink();
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50,
              interval: interval,
              getTitlesWidget: (value, meta) {
                if ((meta.max - value).abs() < 0.01) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    '${value.toInt()}$unit',
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
          border: Border.all(color: AppColors.gray4, width: 1),
        ),
        minX: 0,
        maxX: (sortedData.length - 1).toDouble(),
        minY: minY,
        maxY: maxY,
        lineBarsData: [
          LineChartBarData(
            spots: sortedData.asMap().entries.map((entry) {
              return FlSpot(entry.key.toDouble(), entry.value.count.toDouble());
            }).toList(),
            isCurved: true,
            color: widget.selectedStatType.selectedColor,
            barWidth: 2,
            isStrokeCapRound: true,
            curveSmoothness: 0.2,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 4,
                  color: widget.selectedStatType.selectedColor,
                  strokeWidth: 2,
                  strokeColor: AppColors.white,
                );
              },
            ),
            preventCurveOverShooting: true,
            preventCurveOvershootingThreshold: 0.1,
            belowBarData: BarAreaData(
              show: true,
              color: widget.selectedStatType.selectedColor.withOpacity(0.1),
            ),
          ),
        ],
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (spots) {
              return spots.map((spot) {
                return LineTooltipItem(
                  '${spot.y.toInt()}$unit',
                  SsentifTextStyles.regular12.copyWith(color: AppColors.white),
                );
              }).toList();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildRoutineRatioChart({
    required List<MonthlyRoutineRatioEntity> data,
    required String unit,
  }) {
    final sortedData = List<MonthlyRoutineRatioEntity>.from(data)
      ..sort((a, b) => a.yearMonth.compareTo(b.yearMonth));

    if (sortedData.isEmpty) {
      return const Center(
        child: Text('데이터가 없습니다.'),
      );
    }

    final minY = 0.0;
    final maxY = 100.0;
    final interval = (maxY - minY) / 5;

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
              interval: 1,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index >= 0 && index < sortedData.length) {
                  final yearMonth = sortedData[index].yearMonth;
                  try {
                    final date = DateFormat('yyyy-MM').parse(yearMonth);
                    return Padding(
                      padding: const EdgeInsets.only(top: 8, right: 4),
                      child: Text(
                        DateFormat('MM/yy').format(date),
                        style: SsentifTextStyles.regular10.copyWith(
                          color: AppColors.gray2,
                        ),
                      ),
                    );
                  } catch (e) {
                    return const SizedBox.shrink();
                  }
                }
                return const SizedBox.shrink();
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50,
              interval: interval,
              getTitlesWidget: (value, meta) {
                final isTop = (meta.max - value).abs() < 0.01;
                return Padding(
                  padding: EdgeInsets.only(
                    right: 5,
                    top: isTop ? 4 : 0,
                  ),
                  child: Text(
                    '${value.toInt()}$unit',
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
          border: Border.all(color: AppColors.gray4, width: 1),
        ),
        minX: 0,
        maxX: (sortedData.length - 1).toDouble(),
        minY: minY,
        maxY: maxY,
        lineBarsData: [
          LineChartBarData(
            spots: sortedData.asMap().entries.map((entry) {
              return FlSpot(
                entry.key.toDouble(),
                (entry.value.ratio * 100).toDouble(),
              );
            }).toList(),
            isCurved: true,
            color: widget.selectedStatType.selectedColor,
            barWidth: 2,
            isStrokeCapRound: true,
            curveSmoothness: 0.2,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 4,
                  color: widget.selectedStatType.selectedColor,
                  strokeWidth: 2,
                  strokeColor: AppColors.white,
                );
              },
            ),
            preventCurveOverShooting: true,
            preventCurveOvershootingThreshold: 0.1,
            belowBarData: BarAreaData(
              show: true,
              color: widget.selectedStatType.selectedColor.withOpacity(0.1),
            ),
          ),
        ],
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (spots) {
              return spots.map((spot) {
                return LineTooltipItem(
                  '${spot.y.toInt()}$unit',
                  SsentifTextStyles.regular12.copyWith(color: AppColors.white),
                );
              }).toList();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildRepurchaseCountChart({
    required List<MonthlyRepurchaseCountEntity> data,
    required String unit,
  }) {
    final sortedData = List<MonthlyRepurchaseCountEntity>.from(data)
      ..sort((a, b) => a.yearMonth.compareTo(b.yearMonth));

    if (sortedData.isEmpty) {
      return const Center(
        child: Text('데이터가 없습니다.'),
      );
    }

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
              interval: 1,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index >= 0 && index < sortedData.length) {
                  final yearMonth = sortedData[index].yearMonth;
                  try {
                    final date = DateFormat('yyyy-MM').parse(yearMonth);
                    return Padding(
                      padding: const EdgeInsets.only(top: 8, right: 4),
                      child: Text(
                        DateFormat('MM/yy').format(date),
                        style: SsentifTextStyles.regular10.copyWith(
                          color: AppColors.gray2,
                        ),
                      ),
                    );
                  } catch (e) {
                    return const SizedBox.shrink();
                  }
                }
                return const SizedBox.shrink();
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50,
              interval: interval,
              getTitlesWidget: (value, meta) {
                if ((meta.max - value).abs() < 0.01) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    '${value.toInt()}$unit',
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
          border: Border.all(color: AppColors.gray4, width: 1),
        ),
        minX: 0,
        maxX: (sortedData.length - 1).toDouble(),
        minY: minY,
        maxY: maxY,
        lineBarsData: [
          LineChartBarData(
            spots: sortedData.asMap().entries.map((entry) {
              return FlSpot(entry.key.toDouble(), entry.value.count.toDouble());
            }).toList(),
            isCurved: true,
            color: widget.selectedStatType.selectedColor,
            barWidth: 2,
            isStrokeCapRound: true,
            curveSmoothness: 0.2,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 4,
                  color: widget.selectedStatType.selectedColor,
                  strokeWidth: 2,
                  strokeColor: AppColors.white,
                );
              },
            ),
            preventCurveOverShooting: true,
            preventCurveOvershootingThreshold: 0.1,
            belowBarData: BarAreaData(
              show: true,
              color: widget.selectedStatType.selectedColor.withOpacity(0.1),
            ),
          ),
        ],
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (spots) {
              return spots.map((spot) {
                return LineTooltipItem(
                  '${spot.y.toInt()}$unit',
                  SsentifTextStyles.regular12.copyWith(color: AppColors.white),
                );
              }).toList();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildSatisfactionChart({
    required List<MonthlyScheduleReviewAverageEntity> data,
    required String unit,
  }) {
    final sortedData = List<MonthlyScheduleReviewAverageEntity>.from(data)
      ..sort((a, b) => a.yearMonth.compareTo(b.yearMonth));

    if (sortedData.isEmpty) {
      return const Center(
        child: Text('데이터가 없습니다.'),
      );
    }

    final minY = 0.0;
    final maxY = 100.0;
    final interval = (maxY - minY) / 5;

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
              interval: 1,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index >= 0 && index < sortedData.length) {
                  final yearMonth = sortedData[index].yearMonth;
                  try {
                    final date = DateFormat('yyyy-MM').parse(yearMonth);
                    return Padding(
                      padding: const EdgeInsets.only(top: 8, right: 4),
                      child: Text(
                        DateFormat('MM/yy').format(date),
                        style: SsentifTextStyles.regular10.copyWith(
                          color: AppColors.gray2,
                        ),
                      ),
                    );
                  } catch (e) {
                    return const SizedBox.shrink();
                  }
                }
                return const SizedBox.shrink();
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50,
              interval: interval,
              getTitlesWidget: (value, meta) {
                final isTop = (meta.max - value).abs() < 0.01;
                return Padding(
                  padding: EdgeInsets.only(
                    right: 5,
                    top: isTop ? 4 : 0,
                  ),
                  child: Text(
                    '${value.toInt()}$unit',
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
          border: Border.all(color: AppColors.gray4, width: 1),
        ),
        minX: 0,
        maxX: (sortedData.length - 1).toDouble(),
        minY: minY,
        maxY: maxY,
        lineBarsData: [
          LineChartBarData(
            spots: sortedData.asMap().entries.map((entry) {
              return FlSpot(
                entry.key.toDouble(),
                (entry.value.averageSatisfaction * 100).toDouble(),
              );
            }).toList(),
            isCurved: true,
            color: widget.selectedStatType.selectedColor,
            barWidth: 2,
            isStrokeCapRound: true,
            curveSmoothness: 0.2,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 4,
                  color: widget.selectedStatType.selectedColor,
                  strokeWidth: 2,
                  strokeColor: AppColors.white,
                );
              },
            ),
            preventCurveOverShooting: true,
            preventCurveOvershootingThreshold: 0.1,
            belowBarData: BarAreaData(
              show: true,
              color: widget.selectedStatType.selectedColor.withOpacity(0.1),
            ),
          ),
        ],
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (spots) {
              return spots.map((spot) {
                return LineTooltipItem(
                  '${spot.y.toInt()}$unit',
                  SsentifTextStyles.regular12.copyWith(color: AppColors.white),
                );
              }).toList();
            },
          ),
        ),
      ),
    );
  }

  double _calculateNiceInterval(double rawInterval) {
    if (rawInterval <= 0) return 10.0;

    final magnitude = math.pow(10, (math.log(rawInterval) / math.ln10).floor());
    final normalized = rawInterval / magnitude;

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

