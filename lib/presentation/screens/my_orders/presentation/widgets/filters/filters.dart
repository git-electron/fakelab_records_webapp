part of '../../my_orders_screen.dart';

class _Filters extends StatelessWidget {
  const _Filters();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Pad(horizontal: 20),
      child: Row(
        children: [
          Expanded(child: _TypeFilter()),
          Gap(10),
          Expanded(child: _StatusFilter()),
        ],
      ),
    );
  }
}
