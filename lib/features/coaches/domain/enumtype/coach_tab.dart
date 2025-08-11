enum CoachTab {
  managedMembers,
  monthlyStatistics,
  sales;
}

extension CoachTabExtension on CoachTab {
  String get label {
    switch (this) {
      case CoachTab.managedMembers:
        return '관리중인 회원 목록';
      case CoachTab.monthlyStatistics:
        return '월별 통계';
      case CoachTab.sales:
        return '수강권 매출 (준비중)';
    }
  }
}
