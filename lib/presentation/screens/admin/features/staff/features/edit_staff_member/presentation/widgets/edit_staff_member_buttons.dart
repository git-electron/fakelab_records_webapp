import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/edit_staff_member/domain/bloc/admin_edit_staff_member_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EditStaffMemberButtons extends StatelessWidget {
  const EditStaffMemberButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminEditStaffMemberBloc bloc = context.read();

    return BlocBuilder<AdminEditStaffMemberBloc, AdminEditStaffMemberState>(
      builder: (context, state) {
        return Column(
          children: [
            AppButton.primary(
              onTap: () {
                bloc.add(
                  const AdminEditStaffMemberEvent.confirmButtonPressed(),
                );
              },
              isEnabled: state.canProceed,
              isLoading: state.isLoading,
              text: 'Подтвердить',
            ),
            const Gap(5),
            AppButton(
              onTap: () => AppConfirmationDialog.show(
                context,
                title: 'Подтверждение',
                description: 'Ты точно хочешь удалить этого сотрудника?',
              ).then((isConfirmed) {
                if (isConfirmed ?? false) {
                  bloc.add(
                    const AdminEditStaffMemberEvent.deleteButtonPressed(),
                  );
                }
              }),
              backgroundColor: context.colors.primary,
              contentColor: context.colors.onBackground,
              isEnabled: state.canProceed,
              isLoading: state.isLoading,
              icon: Assets.icons.delete.light,
              text: 'Удалить сотрудника',
            ),
          ],
        );
      },
    );
  }
}
