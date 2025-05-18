part of '../../../../../admin_clients_screen.dart';

class _ActionButtons extends StatelessWidget {
  const _ActionButtons(this.client);

  final User client;

  @override
  Widget build(BuildContext context) {
    final AdminClientsBloc bloc = context.read();

    return Row(
      spacing: 5,
      children: [
        Tappable(
          onTap: () => context.pushRoute(AdminEditClientRoute(
            client: client,
            adminClientsBloc: bloc,
            id: client.id.toString(),
          )),
          child: Assets.icons.pencil.light.svg(),
        ),
        Tappable(
          onTap: () => AppConfirmationDialog.show(
            context,
            title: 'Подтверждение',
            description: 'Ты точно хочешь удалить этого клиента?',
          ).then((isConfirmed) {
            if (isConfirmed ?? false) {
              bloc.add(AdminClientsEvent.deleteClient(client.id));
            }
          }),
          child: Assets.icons.delete.primary.svg(),
        ),
      ],
    );
  }
}
