part of '../../../admin_edit_staff_member_screen.dart';

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    final AdminEditStaffMemberBloc bloc = context.read();

    return Column(
      spacing: 10,
      children: [
        Row(
          spacing: 10,
          children: [
            Expanded(
              flex: 3,
              child: AppTextField(
                initialValue: bloc.state.firstName,
                onChanged: (value) =>
                    bloc.add(AdminEditStaffMemberEvent.firstNameChanged(value)),
                hintText: 'Имя',
                keyboardType: TextInputType.name,
              ),
            ),
            Expanded(
              flex: 4,
              child: AppTextField(
                initialValue: bloc.state.lastName,
                onChanged: (value) =>
                    bloc.add(AdminEditStaffMemberEvent.lastNameChanged(value)),
                hintText: 'Фамилия',
                keyboardType: TextInputType.name,
              ),
            ),
          ],
        ),
        AppTextField(
          initialValue: bloc.state.username,
          onChanged: (value) =>
              bloc.add(AdminEditStaffMemberEvent.usernameChanged(value)),
          hintText: 'Псевдоним артиста',
          keyboardType: TextInputType.name,
        ),
      ],
    );
  }
}
