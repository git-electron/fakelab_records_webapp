import 'package:fakelab_records_webapp/presentation/screens/admin/features/edit_staff_member/domain/bloc/admin_edit_staff_member_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditStaffMemberButton extends StatelessWidget {
  const EditStaffMemberButton({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminEditStaffMemberBloc bloc = context.read();

    return BlocBuilder<AdminEditStaffMemberBloc, AdminEditStaffMemberState>(
      builder: (context, state) {
        return AppButton.primary(
          onTap: () {
            bloc.add(const AdminEditStaffMemberEvent.createButtonPressed());
          },
          isEnabled: state.canProceed,
          isLoading: state.isLoading,
          text: 'Подтвердить',
        );
      },
    );
  }
}
