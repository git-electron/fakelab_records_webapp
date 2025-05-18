part of '../../../../admin_clients_screen.dart';

class _Header extends StatelessWidget {
  const _Header(this.client);

  final User client;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _ClientInfo(client),
        _ActionButtons(client),
      ],
    );
  }
}
