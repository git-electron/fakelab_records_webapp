import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/features/status_history/status_history_feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/di/injector.dart';
import '../../../../core/extensions/border_radius_extensions.dart';
import '../../../../core/extensions/string_extensions.dart';
import '../../../../core/gen/assets.gen.dart';
import '../../../../core/theme/theme_extensions.dart';
import '../../../../features/checkout/domain/models/checkout_hint.dart';
import '../../../../features/checkout/presentation/checkout_feature.dart';
import '../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../features/my_orders/domain/models/order/order_status.dart';
import '../../../ui/avatar/avatar.dart';
import '../../../ui/pages/error_page.dart';
import '../../../ui/pages/loading_page.dart';
import '../../../ui/wrappers/tappable.dart';
import '../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../../admin/features/staff/domain/models/staff_member.dart';
import '../domain/bloc/my_order_bloc.dart';
import '../domain/models/my_order_bloc_data.dart';

part 'widgets/app_bar.dart';
part 'widgets/assignee/assignee.dart';
part 'widgets/assignee/widgets/activities.dart';
part 'widgets/assignee/widgets/profile.dart';
part 'widgets/header/header.dart';
part 'widgets/header/widgets/id.dart';
part 'widgets/header/widgets/status.dart';
part 'widgets/header/widgets/title.dart';
part 'widgets/services.dart';
part 'widgets/status_history.dart';

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
      create: (context) => $<MyOrderBloc>(
        param1: MyOrderBlocData(orderId: orderId),
      ),
      child: Scaffold(
        body: BlocBuilder<MyOrderBloc, MyOrderState>(
          builder: (context, state) {
            if (state.isLoading) return const LoadingPage();
            if (state.hasError) return ErrorPage(message: state.message);

            return const CustomScrollView(
              slivers: [
                _AppBar(),
                _Body(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: context.colors.background,
        padding: const Pad(all: 20, bottom: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(),
            _Assignee(),
            Gap(10),
            _Services(),
            Gap(10),
            _StatusHistory(),
          ],
        ),
      ),
    );
  }
}
