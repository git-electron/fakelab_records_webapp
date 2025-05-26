import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/border_radius_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/list_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/ui/wrappers/tappable.dart';
import 'domain/bloc/my_bookings_feature_bloc.dart';
import 'domain/models/booking/booking.dart';
import 'domain/models/type_policy/type_policy.dart';

part 'widgets/list/list.dart';
part 'widgets/single/single.dart';
part 'widgets/single/card/booking_card_small.dart';
part 'widgets/single/card/widgets/title_small.dart';
part 'widgets/single/card/widgets/info_small.dart';

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
