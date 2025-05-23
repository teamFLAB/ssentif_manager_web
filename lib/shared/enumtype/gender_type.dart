
class GenderType {
  GenderType._();
  static final GenderType _instance = GenderType._();
  factory GenderType() {
    return _instance;
  }

  static const male = "male";
  static const female = "female";
  static const maleDto = "MAN";
  static const femaleDto = "WOMAN";

  static findGenderType(String dto) {
    return (dto == maleDto) ? GenderType.male : GenderType.female;
  }

  static findGenderDto(String gender) {
    return (gender == male) ? maleDto : femaleDto;
  }

  static findGenderOneChar(String gender) {
    return (gender == male) ? "male_1char" :"female_1char";
  }
}