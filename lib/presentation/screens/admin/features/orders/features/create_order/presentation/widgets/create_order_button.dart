import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/create_order/domain/bloc/admin_create_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateOrderButton extends StatelessWidget {
  const CreateOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminCreateOrderBloc bloc = context.read();

    return BlocBuilder<AdminCreateOrderBloc, AdminCreateOrderState>(
      builder: (context, state) {
        return AppButton.primary(
          onTap: () {
            bloc.add(const AdminCreateOrderEvent.createButtonPressed());
          },
          isEnabled: state.canProceed,
          isLoading: state.isLoading,
          text: 'Создать',
        );
      },
    );
  }
}
