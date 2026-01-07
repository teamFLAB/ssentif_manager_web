enum VoucherStatusType {
  inClass,
  complete,
  wait;

  static const String voucherInClassDto = "IN_CLASS";
  static const String voucherCompleteDto = "COMPLETE";
  static const String voucherWaitDto = "WAIT";

  static VoucherStatusType findType(String typeDto) {
    switch(typeDto) {
      case VoucherStatusType.voucherInClassDto:
        return VoucherStatusType.inClass;
      case VoucherStatusType.voucherCompleteDto:
        return VoucherStatusType.complete;
      case VoucherStatusType.voucherWaitDto:
        return VoucherStatusType.wait;
      default:
        return VoucherStatusType.complete;
    }
  }

  String getStringKey() {
    switch(this) {
      case VoucherStatusType.inClass:
        return "in_class";
      case VoucherStatusType.complete:
        return "expired";
      case VoucherStatusType.wait:
        return "class_wait";
    }
  }
}

