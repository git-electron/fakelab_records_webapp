extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension NullableStringExtensions on String? {
  bool get isNotNullAndEmpty => this != null && this!.isNotEmpty;
}
