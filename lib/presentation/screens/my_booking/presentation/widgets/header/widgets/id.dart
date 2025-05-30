part of '../../../my_booking_screen.dart';

class _Id extends StatelessWidget {
  const _Id(this.bookingId);

  final String bookingId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      padding: const Pad(all: 20),
      child: _Content(bookingId),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content(this.bookingId);

  final String bookingId;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Номер бронирования', style: context.styles.body1),
            Text('#$bookingId', style: context.styles.footer1),
          ],
        ),
        Tappable(
          onTap: () => _onCopyButtonTap(context),
          child: Assets.icons.copy.light.svg(height: 30, width: 30),
        ),
      ],
    );
  }

  void _onCopyButtonTap(BuildContext context) {
    Clipboard.setData(ClipboardData(text: bookingId));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Скопировано')),
    );
  }
}
