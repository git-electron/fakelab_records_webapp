part of '../admin_create_client_screen.dart';

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    final AdminCreateClientBloc bloc = context.read();

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
                onChanged: (value) => bloc.add(
                  AdminCreateClientEvent.firstNameChanged(value),
                ),
                shouldAutofocus: true,
                hintText: 'Имя',
                keyboardType: TextInputType.name,
              ),
            ),
            Expanded(
              flex: 4,
              child: AppTextField(
                initialValue: bloc.state.lastName,
                onChanged: (value) => bloc.add(
                  AdminCreateClientEvent.lastNameChanged(value),
                ),
                hintText: 'Фамилия',
                keyboardType: TextInputType.name,
              ),
            ),
          ],
        ),
        AppTextField(
          initialValue: bloc.state.username,
          onChanged: (value) => bloc.add(
            AdminCreateClientEvent.usernameChanged(value),
          ),
          prefixIcon: Assets.icons.user.light,
          hintText: 'Telegram-юзернейм',
          keyboardType: TextInputType.name,
        ),
        AppTextField(
          initialValue: phoneNumberFormatter.maskText(
            bloc.state.phoneNumber ?? '',
          ),
          onChanged: (value) => bloc.add(
            AdminCreateClientEvent.phoneNumberChanged(value),
          ),
          inputFormatters: [phoneNumberFormatter],
          prefixIcon: Assets.icons.phone.light,
          hintText: 'Номер телефона',
          keyboardType: TextInputType.name,
        ),
      ],
    );
  }
}
