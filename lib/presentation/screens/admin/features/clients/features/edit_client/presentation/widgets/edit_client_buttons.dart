import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/edit_client/domain/bloc/admin_edit_client_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EditClientButtons extends StatelessWidget {
  const EditClientButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminEditClientBloc bloc = context.read();

    return BlocBuilder<AdminEditClientBloc, AdminEditClientState>(
      builder: (context, state) {
        return Column(
          children: [
            AppButton.primary(
              onTap: () {
                bloc.add(
                  const AdminEditClientEvent.confirmButtonPressed(),
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
                description: 'Ты точно хочешь удалить этого клиента?',
              ).then((isConfirmed) {
                if (isConfirmed ?? false) {
                  bloc.add(
                    const AdminEditClientEvent.deleteButtonPressed(),
                  );
                }
              }),
              backgroundColor: context.colors.primary,
              contentColor: context.colors.onBackground,
              icon: Assets.icons.delete.light,
              text: 'Удалить клиента',
            ),
          ],
        );
      },
    );
  }
}
