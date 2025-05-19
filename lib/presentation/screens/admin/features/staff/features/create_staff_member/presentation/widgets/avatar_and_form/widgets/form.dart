part of '../../../admin_create_staff_member_screen.dart';

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    final AdminCreateStaffMemberBloc bloc = context.read();

    return _ExpandedWrapper(
      child: Column(
        spacing: 10,
        children: [
          Row(
            spacing: 10,
            children: [
              Expanded(
                flex: 3,
                child: AppTextField(
                  initialValue: bloc.state.firstName,
                  onChanged: (value) => bloc
                      .add(AdminCreateStaffMemberEvent.firstNameChanged(value)),
                  shouldAutofocus: true,
                  hintText: 'Имя',
                  keyboardType: TextInputType.name,
                ),
              ),
              Expanded(
                flex: 4,
                child: AppTextField(
                  initialValue: bloc.state.lastName,
                  onChanged: (value) => bloc
                      .add(AdminCreateStaffMemberEvent.lastNameChanged(value)),
                  hintText: 'Фамилия',
                  keyboardType: TextInputType.name,
                ),
              ),
            ],
          ),
          AppTextField(
            initialValue: bloc.state.username,
            onChanged: (value) =>
                bloc.add(AdminCreateStaffMemberEvent.usernameChanged(value)),
            hintText: 'Псевдоним артиста',
            keyboardType: TextInputType.name,
          ),
        ],
      ),
    );
  }
}

class _ExpandedWrapper extends StatelessWidget {
  const _ExpandedWrapper({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    if (isMobile) return child;
    return Expanded(child: child);
  }
}
