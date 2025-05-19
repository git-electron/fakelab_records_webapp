part of '../../admin_clients_screen.dart';

class _Filters extends StatelessWidget {
  const _Filters();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Pad(horizontal: 20),
      child: Row(
        spacing: 10,
        children: [
          _SearchField(),
          _AddClientButton(),
        ],
      ),
    );
  }
}
