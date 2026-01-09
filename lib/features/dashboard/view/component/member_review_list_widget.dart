import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:ssentif_manager_web/core/themes/typography.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/schedule_review_response.dart';
import 'package:ssentif_manager_web/features/dashboard/data/model/trainer_with_schedule_reviews_response.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/review_detail_dialog.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/review_period_filter_widget.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/review_search_bar_widget.dart';
import 'package:ssentif_manager_web/features/dashboard/view/component/review_status_filter_widget.dart';

enum ReviewPeriodFilter {
  today('당일'),
  oneWeek('1주'),
  twoWeeks('2주'),
  all('전체');

  final String label;
  const ReviewPeriodFilter(this.label);
}

enum ReviewStatusFilter {
  all('전체'),
  new_('신규'),
  renewal('재등록');

  final String label;
  const ReviewStatusFilter(this.label);
}

class MemberReviewListWidget extends StatefulWidget {
  final List<TrainerWithScheduleReviewsResponse> currentMonthReviews;

  const MemberReviewListWidget({
    super.key,
    required this.currentMonthReviews,
  });

  @override
  State<MemberReviewListWidget> createState() => _MemberReviewListWidgetState();
}

class _MemberReviewListWidgetState extends State<MemberReviewListWidget> {
  ReviewPeriodFilter _selectedPeriod = ReviewPeriodFilter.all;
  ReviewStatusFilter _selectedStatus = ReviewStatusFilter.all;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    // 모든 리뷰를 평탄화하고 날짜 내림차순 정렬
    var allReviews = widget.currentMonthReviews
        .expand((trainer) => trainer.scheduleReviews)
        .toList()
      ..sort((a, b) {
        try {
          final dateA = DateTime.parse(a.scheduleDate);
          final dateB = DateTime.parse(b.scheduleDate);
          return dateB.compareTo(dateA); // 내림차순
        } catch (e) {
          // 날짜 파싱 실패 시 원본 문자열로 비교
          return b.scheduleDate.compareTo(a.scheduleDate);
        }
      });

    // 기간 필터 적용
    allReviews = _applyPeriodFilter(allReviews);
    // 상태 필터 적용
    allReviews = _applyStatusFilter(allReviews);
    // 검색 필터 적용
    allReviews = _applySearchFilter(allReviews);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 500,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '회원의 수업 후기',
                style: SsentifTextStyles.bold18(context).copyWith(
                  color: AppColors.black,
                ),
              ),
              // 필터들
              Row(
                children: [
                  // 검색바
                  ReviewSearchBarWidget(
                    controller: _searchController,
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                  ),
                  const SizedBox(width: 8),
                  ReviewPeriodFilterWidget(
                    selectedPeriod: _selectedPeriod,
                    onPeriodChanged: (value) {
                      setState(() {
                        _selectedPeriod = value;
                      });
                    },
                  ),
                  const SizedBox(width: 8),
                  ReviewStatusFilterWidget(
                    selectedStatus: _selectedStatus,
                    onStatusChanged: (value) {
                      setState(() {
                        _selectedStatus = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          // 헤더
          _buildHeader(),
          // 리스트
          Expanded(
            child: allReviews.isEmpty
                ? Center(
                    child: Text(
                      '후기가 없습니다.',
                      style: SsentifTextStyles.regular14(context).copyWith(
                        color: AppColors.gray2,
                      ),
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: allReviews
                          .map((review) => _buildReviewItem(review))
                          .toList(),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.gray4,
            width: 1,
          ),
          bottom: BorderSide(
            color: AppColors.gray4,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              '날짜',
              style: SsentifTextStyles.medium12(context).copyWith(
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              '강사명',
              style: SsentifTextStyles.medium12(context).copyWith(
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              '회원명',
              style: SsentifTextStyles.medium12(context).copyWith(
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              '상태',
              style: SsentifTextStyles.medium12(context).copyWith(
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              '만족도',
              style: SsentifTextStyles.medium12(context).copyWith(
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              '후기',
              style: SsentifTextStyles.medium12(context).copyWith(
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReviewItem(ScheduleReviewResponse review) {
    // 날짜 포맷팅
    String formattedDate = '';
    try {
      if (review.scheduleDate.isNotEmpty) {
        final date = DateTime.parse(review.scheduleDate);
        formattedDate = DateFormat('yyyy.MM.dd').format(date);
      }
    } catch (e) {
      formattedDate = review.scheduleDate;
    }

    final satisfactionPercent = (review.satisfaction).toStringAsFixed(1);

    return GestureDetector(
      onTap: () {
        ReviewDetailDialog.show(context, review: review);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: const BoxDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                formattedDate,
                style: SsentifTextStyles.medium12(context).copyWith(
                  color: AppColors.gray2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                review.trainerName,
                style: SsentifTextStyles.medium12(context).copyWith(
                  color: AppColors.gray2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                review.clientName,
                style: SsentifTextStyles.medium12(context).copyWith(
                  color: AppColors.gray2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                _formatClientStatus(review.clientStatus),
                style: SsentifTextStyles.medium12(context).copyWith(
                  color: AppColors.gray2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                '$satisfactionPercent%',
                style: SsentifTextStyles.medium12(context).copyWith(
                  color: AppColors.gray2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                review.review,
                style: SsentifTextStyles.medium12(context).copyWith(
                  color: AppColors.gray2,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<ScheduleReviewResponse> _applyPeriodFilter(
      List<ScheduleReviewResponse> reviews) {
    if (_selectedPeriod == ReviewPeriodFilter.all) {
      return reviews;
    }

    final now = DateTime.now();
    DateTime filterDate;

    switch (_selectedPeriod) {
      case ReviewPeriodFilter.today:
        filterDate = DateTime(now.year, now.month, now.day);
        break;
      case ReviewPeriodFilter.oneWeek:
        filterDate = now.subtract(const Duration(days: 7));
        break;
      case ReviewPeriodFilter.twoWeeks:
        filterDate = now.subtract(const Duration(days: 14));
        break;
      case ReviewPeriodFilter.all:
        return reviews;
    }

    return reviews.where((review) {
      try {
        final reviewDate = DateTime.parse(review.scheduleDate);
        return reviewDate.isAfter(filterDate) ||
            reviewDate.isAtSameMomentAs(filterDate);
      } catch (e) {
        return false;
      }
    }).toList();
  }

  List<ScheduleReviewResponse> _applyStatusFilter(
      List<ScheduleReviewResponse> reviews) {
    if (_selectedStatus == ReviewStatusFilter.all) {
      return reviews;
    }

    return reviews.where((review) {
      switch (_selectedStatus) {
        case ReviewStatusFilter.new_:
          return review.clientStatus == 'NEW';
        case ReviewStatusFilter.renewal:
          return review.clientStatus == 'RENEWAL';
        case ReviewStatusFilter.all:
          return true;
      }
    }).toList();
  }

  List<ScheduleReviewResponse> _applySearchFilter(
      List<ScheduleReviewResponse> reviews) {
    if (_searchQuery.isEmpty) {
      return reviews;
    }

    final query = _searchQuery.toLowerCase();
    return reviews.where((review) {
      final trainerName = review.trainerName.toLowerCase();
      final clientName = review.clientName.toLowerCase();
      final reviewContent = review.review.toLowerCase();
      return trainerName.contains(query) ||
          clientName.contains(query) ||
          reviewContent.contains(query);
    }).toList();
  }

  String _formatClientStatus(String status) {
    switch (status) {
      case 'NEW':
        return '신규';
      case 'RENEWAL':
        return '재등록';
      default:
        return status;
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
