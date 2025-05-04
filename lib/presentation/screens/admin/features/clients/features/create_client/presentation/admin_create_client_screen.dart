import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/create_client/domain/bloc/admin_create_client_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'widgets/create_client_form.dart';
import 'widgets/create_client_button.dart';
import 'widgets/create_client_screen_app_bar.dart';

@RoutePage()
class AdminCreateClientScreen extends StatelessWidget {
  const AdminCreateClientScreen({
    required this.adminClientsBloc,
    super.key,
  });

  final AdminClientsBloc adminClientsBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminCreateClientBloc>(
        param1: adminClientsBloc,
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            TelegramMetaWrapper(builder: (context, meta) {
              if (meta.isMobile) {
                return const CreateClientScreenAppBarMobile();
              }
              return const SliverToBoxAdapter();
            }),
            const SliverToBoxAdapter(
              child: AdminCreateClientScreenBody(),
            ),
          ],
        ),
      ),
    );
  }
}

class AdminCreateClientScreenBody extends StatelessWidget {
  const AdminCreateClientScreenBody({super.key});

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
            CreateClientHeader(),
            Gap(20),
            CreateClientForm(),
            Gap(20),
            CreateClientButton(),
          ],
        ),
      ),
    );
  }
}

class CreateClientHeader extends StatelessWidget {
  const CreateClientHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: context.colors.background,
      child: Text(
        'Добавить клиента',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}
