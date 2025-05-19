part of '../../../admin_staff_screen.dart';

class _AddStaffMemberButton extends StatelessWidget {
  const _AddStaffMemberButton();

  @override
  Widget build(BuildContext context) {
    final AdminStaffBloc bloc = context.read();

    return AppButton.primary(
      onTap: () => context.pushRoute(
        AdminCreateStaffMemberRoute(adminStaffBloc: bloc),
      ),
      text: 'Добавить',
      isExpanded: false,
      icon: Assets.icons.plus.dark,
    );
  }
}
