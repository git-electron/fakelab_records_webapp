part of '../../../../my_bookings_feature.dart';

class _TitleSmall extends StatelessWidget {
  const _TitleSmall(this.booking);

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: booking.status.color,
            shape: BoxShape.circle,
          ),
        ),
        Text(
          booking.title,
          style: context.styles.title3.copyWith(
            fontSize: 18,
            color: context.colors.body,
          ),
        ),
      ],
    );
  }
}
