import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_bloc/admin_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/models/admin_tab.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import '../../../../../../core/utils/scroll_physics/snap_bounce_scroll_physics.dart';
import '../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../ui/pages/empty_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/border_radius_extensions.dart';
import '../../../../../../core/extensions/num_extensions.dart';
import '../../../../../../core/theme/theme_extensions.dart';
import '../../../../../ui/pages/error_page.dart';
import '../../../../../ui/pages/loading_page.dart';
import '../../../domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import '../../../domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import '../domain/models/admin_stats_item.dart';

part 'widgets/header.dart';
part 'widgets/orders/orders.dart';
part 'widgets/orders/widgets/card/order_card.dart';
part 'widgets/orders/widgets/card/widgets/status.dart';
part 'widgets/orders/widgets/card/widgets/title.dart';
part 'widgets/orders/widgets/card/widgets/info.dart';
part 'widgets/orders/widgets/card/widgets/customer.dart';
part 'widgets/orders/widgets/card/widgets/total_cost.dart';
part 'widgets/orders/widgets/all_orders_button.dart';
part 'widgets/stats/stats.dart';
part 'widgets/stats/widgets/stats_card.dart';

class AdminGeneralScreen extends StatelessWidget {
  const AdminGeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: Pad(bottom: 100),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header('Статистика'),
            _Stats(),
            Gap(20),
            _Header('Заказы'),
            _Orders(),
          ],
        ),
      ),
    );
  }
}
