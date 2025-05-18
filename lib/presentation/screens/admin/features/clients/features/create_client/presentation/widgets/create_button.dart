part of '../admin_create_client_screen.dart';

class _CreateButton extends StatelessWidget {
  const _CreateButton();

  @override
  Widget build(BuildContext context) {
    final AdminCreateClientBloc bloc = context.read();

    return BlocBuilder<AdminCreateClientBloc, AdminCreateClientState>(
      builder: (context, state) {
        return AppButton.primary(
          onTap: () {
            bloc.add(const AdminCreateClientEvent.createButtonPressed());
          },
          isEnabled: state.canProceed,
          isLoading: state.isLoading,
          text: 'Создать',
        );
      },
    );
  }
}
