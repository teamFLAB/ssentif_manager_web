

extension NestedListExtensions<T> on List<List<T>> {
  List<T> flatten() {
    List<T> result = [];
    for(var items in this) {
      result.addAll(items);
    }
    return result;
  }
}

extension DateStringUtils on String {
  DateTime toDateTime() {
    try {
      return DateTime.parse(this);
    } catch (e) {
      return DateTime.now();
    }
  }
}

extension StringExtensions on String {
  String toHyphenPhoneNumber() {
    try {
      return "${substring(0, 3)}-${substring(3, 7)}-${substring(7, 11)}";
    } catch(e) {
      return this;
    }
  }
}
