import 'package:fakelab_records_webapp/presentation/screens/admin/features/create_staff_member/domain/bloc/admin_create_staff_member_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateStaffMemberButton extends StatelessWidget {
  const CreateStaffMemberButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminCreateStaffMemberBloc, AdminCreateStaffMemberState>(
      builder: (context, state) {
        return AppButton.primary(
          onTap: () {},
          isEnabled: state.canProceed,
          isLoading: state.isLoading,
          text: 'Создать',
        );
      },
    );
  }
}
