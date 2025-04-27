import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/features/my_orders/my_orders_feature.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/bloc/my_orders_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyOrdersScreenMyOrders extends StatelessWidget {
  const MyOrdersScreenMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final MyOrdersBloc bloc = context.read();

    return Padding(
      padding: const Pad(horizontal: 20),
      child: MyOrdersFeature.vertical(bloc.myOrdersFeatureBloc),
    );
  }
}
