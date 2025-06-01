

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
