part of '../../../my_booking_screen.dart';

class _Status extends StatelessWidget {
  const _Status(this.status);

  final BookingStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const Pad(horizontal: 15, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: status.color,
      ),
      child: Text(
        status.title,
        style: context.styles.title3.copyWith(
          fontSize: 12,
          color: context.colors.background,
        ),
      ),
    );
  }
}
