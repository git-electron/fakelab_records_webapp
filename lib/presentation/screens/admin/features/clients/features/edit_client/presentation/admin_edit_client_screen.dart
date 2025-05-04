import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../domain/bloc/admin_edit_client_bloc.dart';
import 'widgets/edit_client_form.dart';
import 'widgets/edit_client_buttons.dart';
import 'widgets/edit_client_screen_app_bar.dart';

@RoutePage()
class AdminEditClientScreen extends StatelessWidget {
  const AdminEditClientScreen({
    @PathParam('id') required this.id,
    required this.client,
    required this.adminClientsBloc,
    super.key,
  });

  final String id;
  final User client;
  final AdminClientsBloc adminClientsBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminEditClientBloc>(
        param1: client,
        param2: adminClientsBloc,
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            TelegramMetaWrapper(builder: (context, meta) {
              if (meta.isMobile) {
                return const EditClientScreenAppBarMobile();
              }
              return const SliverToBoxAdapter();
            }),
            const SliverToBoxAdapter(
              child: AdminEditClientScreenBody(),
            ),
          ],
        ),
      ),
    );
  }
}

class AdminEditClientScreenBody extends StatelessWidget {
  const AdminEditClientScreenBody({super.key});

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
            EditClientHeader(),
            Gap(20),
            EditClientForm(),
            Gap(20),
            EditClientButtons(),
          ],
        ),
      ),
    );
  }
}

class EditClientHeader extends StatelessWidget {
  const EditClientHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: context.colors.background,
      child: Text(
        'Редактировать клиента',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}
