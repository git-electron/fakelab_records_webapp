part of '../admin_create_staff_member_screen.dart';

class _CreateButton extends StatelessWidget {
  const _CreateButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminCreateStaffMemberBloc, AdminCreateStaffMemberState>(
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
    final AdminCreateStaffMemberBloc bloc = context.read();
    bloc.add(const AdminCreateStaffMemberEvent.createButtonPressed());
  }
}
