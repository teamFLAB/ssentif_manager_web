enum CoachTab {
  weeklySchedule,
  managedMembers,
  monthlyClass,
  sales,
}

extension CoachTabExtension on CoachTab {
  String get label {
    switch (this) {
      case CoachTab.weeklySchedule:
        return '주간 일정';
      case CoachTab.managedMembers:
        return '관리중인 회원';
      case CoachTab.monthlyClass:
        return '월간 수업';
      case CoachTab.sales:
        return '수강권 매출';
    }
  }
}
