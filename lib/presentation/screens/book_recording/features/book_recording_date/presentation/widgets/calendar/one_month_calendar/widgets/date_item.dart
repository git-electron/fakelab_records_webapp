part of '../../../../book_recording_date_screen.dart';

class _DateItem extends StatelessWidget {
  const _DateItem({
    required this.date,
    required this.onSelected,
    required this.isSelected,
    required this.isAvailable,
  });

  final DateTime date;
  final bool isSelected;
  final bool isAvailable;
  final void Function(DateTime) onSelected;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: _isIgnoring,
      child: Tappable(
        onTap: () => onSelected(date),
        child: Container(
          decoration: ShapeDecoration(
            color: _backgroundColor(context),
            shape: BorderRadius.circular(10).smoothShape(
              side: BorderSide(color: _borderColor(context), width: 1.5),
            ),
          ),
          child: Center(
            child: Text(
              date.day.toString(),
              style: _style(context),
            ),
          ),
        ),
      ),
    );
  }

  DateTime get _now => DateTime.now();

  DateTime get _today => DateTime(_now.year, _now.month, _now.day);

  bool get _isIgnoring => !isAvailable;

  bool get _isToday => isSameDay(date, _today);

  bool get _isNotInPast => date.isAfterOrAtSameMomentAs(_today);

  bool get _isAvailable => isAvailable && _isNotInPast;

  Color _backgroundColor(BuildContext context) {
    if (isSelected) return context.colors.primary;
    if (_isToday) return context.colors.transparent;
    if (_isAvailable) return context.colors.onBackground;
    return context.colors.transparent;
  }

  Color _borderColor(BuildContext context) {
    if (isSelected) return context.colors.primary;
    if (_isAvailable) return context.colors.onBackground;
    return context.colors.transparent;
  }

  TextStyle _style(BuildContext context) => context.styles.title3.copyWith(
        fontSize: 12,
        color: _textColor(context),
      );

  Color _textColor(BuildContext context) {
    if (isSelected) return context.colors.onBackground;
    if (_isToday) return context.colors.onBackground;
    if (_isAvailable) return context.colors.background;
    if (_isNotInPast) return context.colors.onBackground;
    return context.colors.footer.copyWithOpacity(.5);
  }
}
