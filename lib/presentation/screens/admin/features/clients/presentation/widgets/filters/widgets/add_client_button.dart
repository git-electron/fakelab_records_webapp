part of '../../../admin_clients_screen.dart';

class _AddClientButton extends StatelessWidget {
  const _AddClientButton();

  @override
  Widget build(BuildContext context) {
    final AdminClientsBloc bloc = context.read();

    return AppButton.primary(
      onTap: () => context.pushRoute(
        AdminCreateClientRoute(adminClientsBloc: bloc),
      ),
      text: 'Добавить',
      isExpanded: false,
      icon: Assets.icons.plus.dark,
    );
  }
}
