import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../core/extensions/border_radius_extensions.dart';
import '../../core/extensions/datetime_extensions.dart';
import '../../core/gen/assets.gen.dart';
import '../../core/router/router.gr.dart';
import '../../core/theme/theme_extensions.dart';
import '../../core/utils/scroll_physics/snap_bounce_scroll_physics.dart';
import '../../presentation/screens/my_orders/domain/bloc/my_orders_filters_bloc/my_orders_filters_bloc.dart';
import '../../presentation/ui/pages/empty_page.dart';
import '../../presentation/ui/wrappers/tappable.dart';
import 'domain/bloc/my_orders_feature_bloc.dart';
import 'domain/models/order/order.dart';
import 'domain/models/order/order_status.dart';

part 'widgets/horizontal_scroll/all_orders_button.dart';
part 'widgets/horizontal_scroll/card/order_card_small.dart';
part 'widgets/horizontal_scroll/card/widgets/info_small.dart';
part 'widgets/horizontal_scroll/card/widgets/status_small.dart';
part 'widgets/horizontal_scroll/card/widgets/title_small.dart';
part 'widgets/horizontal_scroll/horizontal_scroll.dart';
part 'widgets/vertical_scroll/card/order_card.dart';
part 'widgets/vertical_scroll/card/widgets/info.dart';
part 'widgets/vertical_scroll/card/widgets/status.dart';
part 'widgets/vertical_scroll/card/widgets/title.dart';
part 'widgets/vertical_scroll/vertical_scroll.dart';

class MyOrdersFeature extends StatelessWidget {
  const MyOrdersFeature.vertical(
    this.bloc, {
    this.filtersBloc,
    super.key,
  }) : scrollDirection = Axis.vertical;

  const MyOrdersFeature.horizontal(
    this.bloc, {
    super.key,
  })  : scrollDirection = Axis.horizontal,
        filtersBloc = null;

  final Axis scrollDirection;
  final MyOrdersFeatureBloc bloc;
  final MyOrdersFiltersBloc? filtersBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<MyOrdersFeatureBloc, MyOrdersFeatureState>(
        builder: (context, state) {
          return switch (scrollDirection) {
            Axis.vertical => _VerticalScroll(state, filtersBloc: filtersBloc),
            Axis.horizontal => _HorizontalScroll(state),
          };
        },
      ),
    );
  }
}
