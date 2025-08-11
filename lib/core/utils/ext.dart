

import 'package:ssentif_manager_web/features/routine/domain/entity/routine_history_entity.dart';

import '../../shared/domain/entity/media_file_entity.dart';

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

extension FileUrlExt on FileUrlEntity {
  bool isVideoTypeUrl() {
    List<String> parts = fileUrl.split('.');
    String extension = parts.isNotEmpty ? parts.last.toLowerCase() : '';
    List<String> videoExtensions = ['mp4', 'avi', 'mov', 'wmv', 'mkv'];
    List<String> imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp'];
    if (videoExtensions.contains(extension)) { return true; }
    if (imageExtensions.contains(extension)) { return false; }
    return false;
  }

}