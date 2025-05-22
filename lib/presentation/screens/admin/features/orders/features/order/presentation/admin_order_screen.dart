import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../../../../../core/di/injector.dart';
import '../../../../../../../../core/domain/models/user/user.dart';
import '../../../../../../../../core/extensions/border_radius_extensions.dart';
import '../../../../../../../../core/extensions/color_extensions.dart';
import '../../../../../../../../core/extensions/datetime_extensions.dart';
import '../../../../../../../../core/extensions/list_extensions.dart';
import '../../../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../../../core/formatters/phone_number_formatter.dart';
import '../../../../../../../../core/gen/assets.gen.dart';
import '../../../../../../../../core/gen/colors.gen.dart';
import '../../../../../../../../core/theme/theme_extensions.dart';
import '../../../../../../../../features/my_orders/checkout/domain/models/checkout_hint.dart';
import '../../../../../../../../features/my_orders/checkout/presentation/checkout_feature.dart';
import '../../../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../../../features/my_orders/domain/models/order/order_status.dart';
import '../../../../../../../../features/my_orders/domain/models/order/status_history_item/order_status_history_item.dart';
import '../../../../../../../ui/app_button.dart';
import '../../../../../../../ui/avatar/avatar.dart';
import '../../../../../../../ui/pages/error_page.dart';
import '../../../../../../../ui/pages/loading_page.dart';
import '../../../../../../../ui/wrappers/tappable.dart';
import '../../../../../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../../../../../domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import '../../../../../domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import '../../../../staff/domain/models/staff_member.dart';
import '../domain/bloc/admin_order_bloc.dart';
import 'widgets/actions/mixins/cancel_dialog_mixin.dart';
import 'widgets/actions/mixins/change_assignee_dialog_mixin.dart';
import 'widgets/actions/mixins/change_status_dialog_mixin.dart';
import 'widgets/actions/mixins/change_total_cost_dialog_mixin.dart';
import 'widgets/actions/mixins/confirmation_dialog_mixin.dart';
import 'widgets/actions/mixins/return_to_work_dialog_mixin.dart';
import 'widgets/actions/mixins/set_assignee_dialog_mixin.dart';
import 'widgets/actions/mixins/set_total_cost_dialog_mixin.dart';

part 'widgets/actions/actions.dart';
part 'widgets/actions/widgets/actual_actions/actual_actions.dart';
part 'widgets/actions/widgets/actual_actions/awaiting_confirmation_actions/awaiting_confirmation_actions.dart';
part 'widgets/actions/widgets/actual_actions/awaiting_confirmation_actions/widgets/mark_as_ready.dart';
part 'widgets/actions/widgets/actual_actions/awaiting_confirmation_actions/widgets/return_to_work.dart';
part 'widgets/actions/widgets/actual_actions/in_progress_actions/in_progress_actions.dart';
part 'widgets/actions/widgets/actual_actions/pending_actions/pending_actions.dart';
part 'widgets/actions/widgets/actual_actions/request_actions/request_actions.dart';
part 'widgets/actions/widgets/actual_actions/request_actions/widgets/cancel_request.dart';
part 'widgets/actions/widgets/actual_actions/request_actions/widgets/confirm_request.dart';
part 'widgets/actions/widgets/all_actions/all_actions.dart';
part 'widgets/actions/widgets/all_actions/widgets/cancel.dart';
part 'widgets/actions/widgets/all_actions/widgets/change_assignee.dart';
part 'widgets/actions/widgets/all_actions/widgets/change_status.dart';
part 'widgets/actions/widgets/all_actions/widgets/change_total_cost.dart';
part 'widgets/app_bar.dart';
part 'widgets/assignee/assignee.dart';
part 'widgets/assignee/widgets/activities.dart';
part 'widgets/assignee/widgets/profile.dart';
part 'widgets/customer/customer.dart';
part 'widgets/customer/widgets/contacts/contacts.dart';
part 'widgets/customer/widgets/contacts/widgets/button.dart';
part 'widgets/customer/widgets/contacts/widgets/contact_item.dart';
part 'widgets/customer/widgets/header.dart';
part 'widgets/header/header.dart';
part 'widgets/header/widgets/chip.dart';
part 'widgets/header/widgets/id.dart';
part 'widgets/header/widgets/status.dart';
part 'widgets/header/widgets/title.dart';
part 'widgets/services.dart';
part 'widgets/status_history/status_history.dart';
part 'widgets/status_history/widgets/item.dart';

@RoutePage()
class AdminOrderScreen extends StatelessWidget {
  const AdminOrderScreen({
    required this.adminStaffBloc,
    required this.adminOrdersBloc,
    @PathParam('id') required this.orderId,
    super.key,
  });

  final String orderId;
  final AdminStaffBloc adminStaffBloc;
  final AdminOrdersBloc adminOrdersBloc;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => $<AdminOrderBloc>(
            param1: orderId,
            param2: adminOrdersBloc,
          ),
        ),
        BlocProvider.value(value: adminStaffBloc),
      ],
      child: Scaffold(
        body: BlocBuilder<AdminOrderBloc, AdminOrderState>(
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
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          color: context.colors.background,
          constraints: const BoxConstraints(maxWidth: 1500),
          padding: const Pad(all: 20, vertical: 20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(),
              Gap(10),
              _Customer(),
              _Assignee(),
              Gap(10),
              _Services(),
              Gap(10),
              _Actions(),
              Gap(10),
              _StatusHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
