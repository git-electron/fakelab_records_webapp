import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/di/injector.dart';
import '../../../../../../core/extensions/border_radius_extensions.dart';
import '../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../core/gen/assets.gen.dart';
import '../../../../../../core/router/router.gr.dart';
import '../../../../../../core/theme/theme_extensions.dart';
import '../../../../../ui/app_button.dart';
import '../../../../../ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import '../../../../../ui/app_dropdown_button.dart';
import '../../../../../ui/app_text_field.dart';
import '../../../../../ui/avatar/avatar.dart';
import '../../../../../ui/pages/empty_page.dart';
import '../../../../../ui/pages/error_page.dart';
import '../../../../../ui/pages/loading_page.dart';
import '../../../../../ui/wrappers/tappable.dart';
import '../../../domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import '../domain/bloc/admin_staff_filters_bloc.dart';
import '../domain/models/staff_activity.dart';
import '../domain/models/staff_member.dart';
import '../domain/models/staff_service_type.dart';

part 'widgets/filters/filters.dart';
part 'widgets/filters/widgets/add_staff_member_button.dart';
part 'widgets/filters/widgets/search_field.dart';
part 'widgets/filters/widgets/service_filter.dart';
part 'widgets/list.dart';
part 'widgets/tile/tile.dart';
part 'widgets/tile/widgets/header/header.dart';
part 'widgets/tile/widgets/header/widgets/action_buttons.dart';
part 'widgets/tile/widgets/header/widgets/avatar.dart';
part 'widgets/tile/widgets/header/widgets/details.dart';
part 'widgets/tile/widgets/properties/properties.dart';
part 'widgets/tile/widgets/properties/widgets/property_item.dart';

class AdminStaffScreen extends StatelessWidget {
  const AdminStaffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminStaffFiltersBloc>(),
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
