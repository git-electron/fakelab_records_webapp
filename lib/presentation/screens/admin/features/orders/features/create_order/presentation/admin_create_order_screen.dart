import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/di/injector.dart';
import '../../../../../../../../core/domain/models/user/user.dart';
import '../../../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../../../core/formatters/phone_number_formatter.dart';
import '../../../../../../../../core/theme/theme_extensions.dart';
import '../../../../../../../../features/my_orders/domain/models/order/order_type.dart';
import '../../../../../../../ui/app_button.dart';
import '../../../../../../../ui/app_dropdown_button.dart';
import '../../../../../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../../../../../domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import '../../../../../domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import '../domain/bloc/admin_create_order_bloc.dart';

part 'widgets/app_bar.dart';
part 'widgets/create_button.dart';
part 'widgets/description.dart';
part 'widgets/form/form.dart';
part 'widgets/form/widgets/customer.dart';
part 'widgets/form/widgets/type.dart';
part 'widgets/header.dart';

@RoutePage()
class AdminCreateOrderScreen extends StatelessWidget {
  const AdminCreateOrderScreen({
    required this.adminOrdersBloc,
    required this.adminClientsBloc,
    super.key,
  });

  final AdminOrdersBloc adminOrdersBloc;
  final AdminClientsBloc adminClientsBloc;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => $<AdminCreateOrderBloc>(
            param1: adminOrdersBloc,
          ),
        ),
        BlocProvider.value(value: adminClientsBloc),
      ],
      child: const Scaffold(
        body: CustomScrollView(
          slivers: [
            _AppBar(),
            _Body(),
          ],
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
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(),
              _Description(),
              _Form(),
              _CreateButton(),
            ],
          ),
        ),
      ),
    );
  }
}
