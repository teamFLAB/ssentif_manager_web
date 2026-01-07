enum VoucherType {
  offline,
  online;

  static const String offlineDto = "OFFLINE";
  static const String onlineDto = "ONLINE";

  String getStringKey() {
    if(this == VoucherType.offline) {
      return "offline_pt";
    } else {
      return "online_pt";
    }
  }

  static VoucherType findType(String voucherTypeDto) {
    if(voucherTypeDto == VoucherType.offlineDto) {
      return VoucherType.offline;
    } else {
      return VoucherType.online;
    }
  }

  static String getDto(VoucherType voucherType) {
    if(voucherType == VoucherType.offline) {
      return offlineDto;
    } else {
      return onlineDto;
    }
  }
}

