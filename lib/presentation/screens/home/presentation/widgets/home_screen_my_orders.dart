import 'package:fakelab_records_webapp/features/my_orders/my_orders_feature.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/domain/bloc/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenMyOrders extends StatelessWidget {
  const HomeScreenMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = context.read();

    return MyOrdersFeature.horizontal(bloc.myOrdersFeatureBloc);
  }
}
