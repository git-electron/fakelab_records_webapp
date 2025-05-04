import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/create_order/domain/bloc/admin_create_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'widgets/create_order_button.dart';
import 'widgets/create_order_form.dart';
import 'widgets/create_order_screen_app_bar.dart';

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
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            TelegramMetaWrapper(builder: (context, meta) {
              if (meta.isMobile) {
                return const CreateOrderScreenAppBarMobile();
              }
              return const SliverToBoxAdapter();
            }),
            const SliverToBoxAdapter(
              child: AdminCreateOrderScreenBody(),
            ),
          ],
        ),
      ),
    );
  }
}

class AdminCreateOrderScreenBody extends StatelessWidget {
  const AdminCreateOrderScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: context.colors.background,
        constraints: const BoxConstraints(maxWidth: 1500),
        padding: const Pad(top: 20, horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            CreateOrderHeader(),
            Gap(20),
            CreateOrderDescription(),
            Gap(40),
            CreateOrderForm(),
            Gap(20),
            CreateOrderButton(),
          ],
        ),
      ),
    );
  }
}

class CreateOrderHeader extends StatelessWidget {
  const CreateOrderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: context.colors.background,
      child: Text(
        'Создать заказ',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}

class CreateOrderDescription extends StatelessWidget {
  const CreateOrderDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: context.colors.background,
      child: Text(
        'Прежде чем добавлять заказ вручную, предложи заказчику зарегистрироваться в телеграм-боте',
        style: context.styles.body3,
      ),
    );
  }
}
