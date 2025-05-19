part of '../admin_edit_staff_member_screen.dart';

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminEditStaffMemberBloc, AdminEditStaffMemberState>(
      builder: (context, state) {
        return Column(
          spacing: 5,
          children: [
            AppButton.primary(
              onTap: () => _onTap(context),
              isEnabled: state.canProceed,
              isLoading: state.isLoading,
              text: 'Подтвердить',
            ),
            AppButton(
              onTap: () => _onDeleteButtonTap(context),
              backgroundColor: context.colors.primary,
              contentColor: context.colors.onBackground,
              icon: Assets.icons.delete.light,
              text: 'Удалить сотрудника',
            ),
          ],
        );
      },
    );
  }

  void _onTap(BuildContext context) {
    final AdminEditStaffMemberBloc bloc = context.read();
    bloc.add(const AdminEditStaffMemberEvent.confirmButtonPressed());
  }

  Future<void> _onDeleteButtonTap(BuildContext context) {
    final AdminEditStaffMemberBloc bloc = context.read();

    return AppConfirmationDialog.show(
      context,
      title: 'Подтверждение',
      description: 'Ты точно хочешь удалить этого сотрудника?',
    ).then((isConfirmed) {
      if (isConfirmed ?? false) {
        bloc.add(const AdminEditStaffMemberEvent.deleteButtonPressed());
      }
    });
  }
}
