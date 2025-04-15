extension StringExtensions on String {}

extension NullableStringExtensions on String? {
  bool get isNotNullAndEmpty => this != null && this!.isNotEmpty;
}
