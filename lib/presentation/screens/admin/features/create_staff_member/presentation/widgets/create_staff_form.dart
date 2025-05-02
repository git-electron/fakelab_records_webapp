import 'package:fakelab_records_webapp/presentation/screens/admin/features/create_staff_member/domain/bloc/admin_create_staff_member_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CreateStaffForm extends StatelessWidget {
  const CreateStaffForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminCreateStaffMemberBloc bloc = context.read();

    return Column(
      children: [
        Row(
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
            const Gap(10),
            Expanded(
              flex: 4,
              child: AppTextField(
                initialValue: bloc.state.lastName,
                onChanged: (value) => bloc
                    .add(AdminCreateStaffMemberEvent.lastNameChanged(value)),
                shouldAutofocus: true,
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
              bloc.add(AdminCreateStaffMemberEvent.usernameChanged(value)),
          shouldAutofocus: true,
          hintText: 'Псевдоним артиста',
          keyboardType: TextInputType.name,
        ),
      ],
    );
  }
}
