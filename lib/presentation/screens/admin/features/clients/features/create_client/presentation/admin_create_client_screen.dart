import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/di/injector.dart';
import '../../../../../../../../core/formatters/phone_number_formatter.dart';
import '../../../../../../../../core/gen/assets.gen.dart';
import '../../../../../../../../core/theme/theme_extensions.dart';
import '../../../../../../../ui/app_button.dart';
import '../../../../../../../ui/app_text_field.dart';
import '../../../../../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../../../../../domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import '../domain/bloc/admin_create_client_bloc.dart';
import '../domain/models/admin_create_client_bloc_data.dart';

part 'widgets/app_bar.dart';
part 'widgets/create_button.dart';
part 'widgets/form.dart';
part 'widgets/header.dart';

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
        param1: AdminCreateClientBlocData(adminClientsBloc: adminClientsBloc),
      ),
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
              _Form(),
              _CreateButton(),
            ],
          ),
        ),
      ),
    );
  }
}
