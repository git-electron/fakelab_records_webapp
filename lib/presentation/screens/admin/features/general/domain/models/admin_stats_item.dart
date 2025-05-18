class AdminStatsItem {
  AdminStatsItem({
    required this.title,
    required this.value,
  });

  AdminStatsItem.disabled({
    required this.title,
  }) : value = null;

  final String title;
  final dynamic value;

  bool get isEnabled => value != null;
}
