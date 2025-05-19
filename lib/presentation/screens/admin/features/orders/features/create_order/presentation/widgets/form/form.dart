part of '../../admin_create_order_screen.dart';

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 10,
      children: [
        _Customer(),
        _Type(),
      ],
    );
  }
}
