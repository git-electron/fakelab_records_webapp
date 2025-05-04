import 'package:fakelab_records_webapp/core/formatters/phone_number_formatter.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/edit_client/domain/bloc/admin_edit_client_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EditClientForm extends StatelessWidget {
  const EditClientForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminEditClientBloc bloc = context.read();

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: AppTextField(
                initialValue: bloc.state.firstName,
                onChanged: (value) =>
                    bloc.add(AdminEditClientEvent.firstNameChanged(value)),
                hintText: 'Имя',
                keyboardType: TextInputType.name,
              ),
            ),
            const Gap(10),
            Expanded(
              flex: 4,
              child: AppTextField(
                initialValue: bloc.state.lastName,
                onChanged: (value) =>
                    bloc.add(AdminEditClientEvent.lastNameChanged(value)),
                hintText: 'Фамилия',
                keyboardType: TextInputType.name,
              ),
            ),
          ],
        ),
        const Gap(10),
        AppTextField(
          initialValue: bloc.state.username,
          onChanged: (value) =>
              bloc.add(AdminEditClientEvent.usernameChanged(value)),
          prefixIcon: Assets.icons.user.light,
          hintText: 'Telegram-юзернейм',
          keyboardType: TextInputType.name,
        ),
        const Gap(10),
        AppTextField(
          initialValue: phoneNumberFormatter.maskText(
            bloc.state.phoneNumber ?? '',
          ),
          inputFormatters: [phoneNumberFormatter],
          onChanged: (value) =>
              bloc.add(AdminEditClientEvent.phoneNumberChanged(value)),
          prefixIcon: Assets.icons.phone.light,
          hintText: 'Номер телефона',
          keyboardType: TextInputType.name,
        ),
      ],
    );
  }
}
