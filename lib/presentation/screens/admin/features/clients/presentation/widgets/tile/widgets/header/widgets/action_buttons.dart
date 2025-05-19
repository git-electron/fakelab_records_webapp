part of '../../../../../admin_clients_screen.dart';

class _ActionButtons extends StatelessWidget {
  const _ActionButtons(this.client);

  final User client;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Tappable(
          onTap: () => _onEditButtonTap(context),
          child: Assets.icons.pencil.light.svg(),
        ),
        Tappable(
          onTap: () => _onDeleteButtonTap(context),
          child: Assets.icons.delete.primary.svg(),
        ),
      ],
    );
  }

  Future<void> _onEditButtonTap(BuildContext context) {
    final AdminClientsBloc bloc = context.read();

    return context.pushRoute(AdminEditClientRoute(
      client: client,
      adminClientsBloc: bloc,
      id: client.id.toString(),
    ));
  }

  Future<void> _onDeleteButtonTap(BuildContext context) {
    final AdminClientsBloc bloc = context.read();

    return AppConfirmationDialog.show(
      context,
      title: 'Подтверждение',
      description: 'Ты точно хочешь удалить этого клиента?',
    ).then((isConfirmed) {
      if (isConfirmed ?? false) {
        bloc.add(AdminClientsEvent.deleteClient(client.id));
      }
    });
  }
}
