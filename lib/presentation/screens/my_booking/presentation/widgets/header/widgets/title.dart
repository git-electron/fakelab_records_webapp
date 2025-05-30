part of '../../../my_booking_screen.dart';

class _Title extends StatelessWidget {
  const _Title(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.styles.title2.copyWith(height: .85),
    );
  }
}
