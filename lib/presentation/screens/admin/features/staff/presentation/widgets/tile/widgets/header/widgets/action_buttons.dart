part of '../../../../../admin_staff_screen.dart';

class _ActionButtons extends StatelessWidget {
  const _ActionButtons(this.staffMember);

  final StaffMember staffMember;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.center,
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
    final AdminStaffBloc bloc = context.read();

    return context.pushRoute(AdminEditStaffMemberRoute(
      id: staffMember.id,
      adminStaffBloc: bloc,
      staffMember: staffMember,
    ));
  }

  Future<void> _onDeleteButtonTap(BuildContext context) {
    final AdminStaffBloc bloc = context.read();

    return AppConfirmationDialog.show(
      context,
      title: 'Подтверждение',
      description: 'Ты точно хочешь удалить этого сотрудника?',
    ).then((isConfirmed) {
      if (isConfirmed ?? false) {
        bloc.add(AdminStaffEvent.deleteStaffMember(staffMember.id));
      }
    });
  }
}
