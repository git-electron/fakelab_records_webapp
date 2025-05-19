part of '../admin_create_order_screen.dart';

class _CreateButton extends StatelessWidget {
  const _CreateButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminCreateOrderBloc, AdminCreateOrderState>(
      builder: (context, state) {
        return AppButton.primary(
          onTap: () => _onTap(context),
          isEnabled: state.canProceed,
          isLoading: state.isLoading,
          text: 'Создать',
        );
      },
    );
  }

  void _onTap(BuildContext context) {
    final AdminCreateOrderBloc bloc = context.read();
    return bloc.add(const AdminCreateOrderEvent.createButtonPressed());
  }
}
