part of '../../my_booking_screen.dart';

class _Info extends StatelessWidget {
  const _Info();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const Pad(all: 20),
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Информация', style: context.styles.body1),
          const _Properties(),
          const _Buttons(),
        ],
      ),
    );
  }
}
