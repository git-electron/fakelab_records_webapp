import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/create_client/domain/bloc/admin_create_client_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CreateClientForm extends StatelessWidget {
  const CreateClientForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminCreateClientBloc bloc = context.read();

    return Column(
      children: [
        Row(
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
            const Gap(10),
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
        const Gap(10),
        AppTextField(
          initialValue: bloc.state.username,
          onChanged: (value) => bloc.add(
            AdminCreateClientEvent.usernameChanged(value),
          ),
          prefixIcon: Assets.icons.user.light,
          hintText: 'Telegram-юзернейм',
          keyboardType: TextInputType.name,
        ),
        const Gap(10),
        AppTextField(
          initialValue: bloc.state.username,
          onChanged: (value) => bloc.add(
            AdminCreateClientEvent.usernameChanged(value),
          ),
          prefixIcon: Assets.icons.phone.light,
          hintText: 'Номер телефона',
          keyboardType: TextInputType.name,
        ),
      ],
    );
  }
}
