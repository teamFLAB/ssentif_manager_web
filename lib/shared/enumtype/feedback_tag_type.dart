import '../../gen/assets.gen.dart';

enum FeedbackTagType {
  balanced,
  low,
  high,
  none;

  static const _balancedTagDto = "BALANCED";
  static const _lowTagDto = "LOW";
  static const _highTagDto = "HIGH";

  static FeedbackTagType findTag(String dto) {
    switch(dto) {
      case _balancedTagDto:
        return balanced;
      case _lowTagDto:
        return low;
      case _highTagDto:
        return high;
      default:
        return none;
    }
  }
}

extension FeedbackTagTypeExt on FeedbackTagType {
  String getTagSelectedImage() {
    switch(this) {
      case FeedbackTagType.balanced:
        return Assets.images.iconBalanced.path;
      case FeedbackTagType.high:
        return Assets.images.iconHigh.path;
      case FeedbackTagType.low:
        return Assets.images.iconLow.path;
      default:
        return "";
    }
  }

  String geTagDto() {
    switch(this) {
      case FeedbackTagType.balanced:
        return FeedbackTagType._balancedTagDto;
      case FeedbackTagType.high:
        return FeedbackTagType._highTagDto;
      case FeedbackTagType.low:
        return FeedbackTagType._lowTagDto;
      default:
        return "";
    }
  }
}
