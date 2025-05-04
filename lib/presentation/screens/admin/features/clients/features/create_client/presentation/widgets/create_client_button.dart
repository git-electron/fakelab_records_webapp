import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/create_client/domain/bloc/admin_create_client_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateClientButton extends StatelessWidget {
  const CreateClientButton({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminCreateClientBloc bloc = context.read();

    return BlocBuilder<AdminCreateClientBloc, AdminCreateClientState>(
      builder: (context, state) {
        return AppButton.primary(
          onTap: () {
            bloc.add(const AdminCreateClientEvent.createButtonPressed());
          },
          isEnabled: state.canProceed,
          isLoading: state.isLoading,
          text: 'Создать',
        );
      },
    );
  }
}
