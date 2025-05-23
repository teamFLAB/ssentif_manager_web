
enum MatchingStatusType {
  matched,
  created,
  end,
  none;

  static const matchedDto = "MATCH";
  static const createdDTO = "CREATE";
  static const endDto = "END";

  static String findMatchingStatusDto(MatchingStatusType type) {
    switch(type) {
      case MatchingStatusType.matched:
        return matchedDto;
      case MatchingStatusType.created:
        return createdDTO;
      case MatchingStatusType.end:
        return endDto;
      default:
        return "";
    }
  }
}

extension MatchingStatusTypeExt on String {
  MatchingStatusType findMatchingStatusType() {
    switch(this) {
      case MatchingStatusType.matchedDto:
        return MatchingStatusType.matched;
      case MatchingStatusType.createdDTO:
        return MatchingStatusType.created;
      case MatchingStatusType.endDto:
        return MatchingStatusType.end;
      default:
        return MatchingStatusType.none;
    }
  }
}