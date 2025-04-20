import 'package:auto_route/annotations.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_order/domain/bloc/my_order_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({
    @PathParam('id') required this.orderId,
    super.key,
  });

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<MyOrderBloc>(param1: orderId),
      child: Scaffold(
        body: BlocBuilder<MyOrderBloc, MyOrderState>(
          builder: (context, state) {
            return Center(
              child: Text(state.toString()),
            );
          },
        ),
      ),
    );
  }
}
