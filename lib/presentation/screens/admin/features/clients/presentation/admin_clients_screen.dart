import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../../../core/di/injector.dart';
import '../../../../../../core/domain/models/user/user.dart';
import '../../../../../../core/extensions/border_radius_extensions.dart';
import '../../../../../../core/extensions/color_extensions.dart';
import '../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../core/formatters/phone_number_formatter.dart';
import '../../../../../../core/gen/assets.gen.dart';
import '../../../../../../core/router/router.gr.dart';
import '../../../../../../core/theme/theme_extensions.dart';
import '../../../../../ui/app_button.dart';
import '../../../../../ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import '../../../../../ui/app_text_field.dart';
import '../../../../../ui/pages/empty_page.dart';
import '../../../../../ui/pages/error_page.dart';
import '../../../../../ui/pages/loading_page.dart';
import '../../../../../ui/wrappers/tappable.dart';
import '../../../domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import '../domain/bloc/admin_clients_filters_bloc.dart';

part 'widgets/filters/filters.dart';
part 'widgets/filters/widgets/add_client_button.dart';
part 'widgets/filters/widgets/search_field.dart';
part 'widgets/list.dart';
part 'widgets/tile/tile.dart';
part 'widgets/tile/widgets/contacts/contacts.dart';
part 'widgets/tile/widgets/contacts/widgets/button.dart';
part 'widgets/tile/widgets/contacts/widgets/contact_item.dart';
part 'widgets/tile/widgets/header/header.dart';
part 'widgets/tile/widgets/header/widgets/action_buttons.dart';
part 'widgets/tile/widgets/header/widgets/client_info.dart';

class AdminClientsScreen extends StatelessWidget {
  const AdminClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminClientsFiltersBloc>(),
      child: const Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Filters(),
          _List(),
        ],
      ),
    );
  }
}
