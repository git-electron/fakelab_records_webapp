import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/di/injector.dart';
import '../../../../../../../../core/domain/models/user/user.dart';
import '../../../../../../../../core/formatters/phone_number_formatter.dart';
import '../../../../../../../../core/gen/assets.gen.dart';
import '../../../../../../../../core/theme/theme_extensions.dart';
import '../../../../../../../ui/app_text_field.dart';
import '../../../../../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../../../../../domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import '../domain/bloc/admin_edit_client_bloc.dart';

part 'widgets/app_bar.dart';
part 'widgets/edit_buttons.dart';
part 'widgets/form.dart';
part 'widgets/header.dart';

@RoutePage()
class AdminEditClientScreen extends StatelessWidget {
  const AdminEditClientScreen({
    required this.client,
    required this.adminClientsBloc,
    @PathParam('id') required this.id,
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
              _EditButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
