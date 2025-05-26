import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/bloc/my_bookings_feature_bloc.dart';
import 'domain/models/type_policy/type_policy.dart';

part 'widgets/list/list.dart';
part 'widgets/single/single.dart';

class MyBookingsFeature extends StatelessWidget {
  const MyBookingsFeature.list(
    this.bloc, {
    // this.filtersBloc, //TODO
    super.key,
  }) : typePolicy = MyBookingsTypePolicy.list;

  const MyBookingsFeature.single(
    this.bloc, {
    super.key,
  }) : /*filtersBloc = null,*/
        typePolicy = MyBookingsTypePolicy.single;

  final MyBookingsTypePolicy typePolicy;
  final MyBookingsFeatureBloc bloc;
  // final MyOrdersFiltersBloc? filtersBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<MyBookingsFeatureBloc, MyBookingsFeatureState>(
        builder: (context, state) {
          return switch (typePolicy) {
            MyBookingsTypePolicy.list =>
              _List(state), //filtersBloc: filtersBloc),
            MyBookingsTypePolicy.single => _Single(state),
          };
        },
      ),
    );
  }
}
