import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/di/injector.dart';
import '../../../../../../core/domain/models/user/user.dart';
import '../../../../../../core/extensions/border_radius_extensions.dart';
import '../../../../../../core/extensions/color_extensions.dart';
import '../../../../../../core/extensions/datetime_extensions.dart';
import '../../../../../../core/extensions/num_extensions.dart';
import '../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../core/gen/assets.gen.dart';
import '../../../../../../core/router/router.gr.dart';
import '../../../../../../core/theme/theme_extensions.dart';
import '../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../features/my_orders/domain/models/order/order_status.dart';
import '../../../../../../features/my_orders/domain/models/order/order_type.dart';
import '../../../../../ui/app_button.dart';
import '../../../../../ui/app_dropdown_button.dart';
import '../../../../../ui/app_text_field.dart';
import '../../../../../ui/avatar/avatar.dart';
import '../../../../../ui/date_picker/app_date_picker_dialog.dart';
import '../../../../../ui/date_picker/models/date_picker_result.dart';
import '../../../../../ui/pages/empty_page.dart';
import '../../../../../ui/pages/error_page.dart';
import '../../../../../ui/pages/loading_page.dart';
import '../../../../../ui/wrappers/tappable.dart';
import '../../../domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import '../../staff/domain/models/staff_member.dart';
import '../domain/bloc/admin_orders_filters_bloc.dart';

part 'widgets/filters/filters.dart';
part 'widgets/filters/widgets/search_field.dart';
part 'widgets/filters/widgets/date_range_button.dart';
part 'widgets/filters/widgets/status_filter.dart';
part 'widgets/filters/widgets/type_filter.dart';
part 'widgets/list.dart';
part 'widgets/tile/tile.dart';
part 'widgets/tile/widgets/header/header.dart';
part 'widgets/tile/widgets/header/widgets/circle_divider.dart';
part 'widgets/tile/widgets/header/widgets/header_text.dart';
part 'widgets/tile/widgets/header/widgets/status.dart';
part 'widgets/tile/widgets/properties/properties.dart';
part 'widgets/tile/widgets/properties/widgets/assignee.dart';
part 'widgets/tile/widgets/properties/widgets/customer.dart';
part 'widgets/tile/widgets/properties/widgets/property_text_span.dart';
part 'widgets/tile/widgets/properties/widgets/title.dart';
part 'widgets/tile/widgets/properties/widgets/total_cost.dart';

class AdminOrdersScreen extends StatelessWidget {
  const AdminOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminOrdersFiltersBloc>(),
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
