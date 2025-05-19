part of '../../admin_clients_screen.dart';

class _Tile extends StatelessWidget {
  const _Tile(this.client);

  final User client;

  @override
  Widget build(BuildContext context) {
    final AdminClientsBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      onTap: () => context.pushRoute(AdminEditClientRoute(
        client: client,
        adminClientsBloc: bloc,
        id: client.id.toString(),
      )),
      child: Container(
        padding: Pad(all: isMobile ? 15 : 20),
        decoration: ShapeDecoration(
          color: context.colors.card,
          shape: BorderRadius.circular(20).smoothShape(),
        ),
        child: Column(
          spacing: 10,
          children: [
            _Header(client),
            _Contacts(client),
          ],
        ),
      ),
    );
  }
}
