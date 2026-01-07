enum PurchaseType {
  newly,
  repurchase,
  ot;

  static const String newlyDto = "NEW";
  static const String repurchaseDto = "RENEWAL";
  static const String otDto = "OT";

  String getStringKey() {
    if(this == PurchaseType.newly) {
      return "newly";
    } else if(this == PurchaseType.repurchase){
      return "repurchase";
    } else {
      return "ot";
    }
  }

  static PurchaseType? findType(String purchaseTypeDto) {
    if(purchaseTypeDto == PurchaseType.newlyDto) {
      return PurchaseType.newly;
    } else if(purchaseTypeDto == PurchaseType.repurchaseDto){
      return PurchaseType.repurchase;
    } else if(purchaseTypeDto == PurchaseType.otDto){
      return PurchaseType.ot;
    } else {
      return null;
    }
  }

  static String getDto(PurchaseType purchaseType) {
    if(purchaseType == PurchaseType.newly) {
      return newlyDto;
    } else if(purchaseType == PurchaseType.repurchase) {
      return repurchaseDto;
    } else {
      return otDto;
    }
  }
}

