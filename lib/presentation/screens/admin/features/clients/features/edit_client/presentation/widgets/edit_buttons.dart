part of '../admin_edit_client_screen.dart';

class _EditButtons extends StatelessWidget {
  const _EditButtons();

  @override
  Widget build(BuildContext context) {
    final AdminEditClientBloc bloc = context.read();

    return BlocBuilder<AdminEditClientBloc, AdminEditClientState>(
      builder: (context, state) {
        return Column(
          spacing: 5,
          children: [
            AppButton.primary(
              onTap: () {
                bloc.add(
                  const AdminEditClientEvent.confirmButtonPressed(),
                );
              },
              isEnabled: state.canProceed,
              isLoading: state.isLoading,
              text: 'Подтвердить',
            ),
            AppButton(
              onTap: () => AppConfirmationDialog.show(
                context,
                title: 'Подтверждение',
                description: 'Ты точно хочешь удалить этого клиента?',
              ).then((isConfirmed) {
                if (isConfirmed ?? false) {
                  bloc.add(
                    const AdminEditClientEvent.deleteButtonPressed(),
                  );
                }
              }),
              backgroundColor: context.colors.primary,
              contentColor: context.colors.onBackground,
              icon: Assets.icons.delete.light,
              text: 'Удалить клиента',
            ),
          ],
        );
      },
    );
  }
}
