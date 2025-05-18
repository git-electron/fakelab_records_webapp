import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/di/injector.dart';
import '../../../../core/extensions/border_radius_extensions.dart';
import '../../../../core/extensions/color_extensions.dart';
import '../../../../core/theme/theme_extensions.dart';
import '../../../ui/logo/logo.dart';
import '../../../ui/pages/in_development_page.dart';
import '../../../ui/wrappers/tappable.dart';
import '../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../domain/bloc/admin_bloc/admin_bloc.dart';
import '../domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import '../domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import '../domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import '../domain/models/admin_tab.dart';
import '../features/clients/presentation/admin_clients_screen.dart';
import '../features/general/presentation/admin_general_screen.dart';
import '../features/orders/presentation/admin_orders_screen.dart';
import '../features/staff/presentation/admin_staff_screen.dart';

part 'widgets/app_bar.dart';
part 'widgets/content.dart';
part 'widgets/tab_bar.dart';

@RoutePage()
class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => $<AdminBloc>(),
        ),
        BlocProvider(create: (context) => $<AdminStaffBloc>()),
        BlocProvider(create: (context) => $<AdminOrdersBloc>()),
        BlocProvider(create: (context) => $<AdminClientsBloc>()),
      ],
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: BlocBuilder<AdminBloc, AdminState>(
          builder: (context, state) {
            return const Column(
              children: [
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
    return Expanded(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          color: context.colors.background,
          constraints: const BoxConstraints(maxWidth: 1500),
          padding: const Pad(top: 20),
          child: const _Content(),
        ),
      ),
    );
  }
}
