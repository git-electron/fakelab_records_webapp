part of '../../../my_bookings_feature.dart';

class _BookingCardSmall extends StatelessWidget {
  const _BookingCardSmall(this.booking);

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: () {},
      child: Container(
        width: double.maxFinite,
        padding: const Pad(all: 15),
        decoration: ShapeDecoration(
          color: context.colors.card,
          shape: BorderRadius.circular(20).smoothShape(),
        ),
        child: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _TitleSmall(booking),
            _InfoSmall(booking),
          ],
        ),
      ),
    );
  }
}
