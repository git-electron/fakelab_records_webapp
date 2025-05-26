import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart'
    hide ImageSource;
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/di/injector.dart';
import '../../../../core/domain/bloc/user_bloc/user_bloc.dart';
import '../../../../core/extensions/border_radius_extensions.dart';
import '../../../../core/extensions/duration_extensions.dart';
import '../../../../core/extensions/num_extensions.dart';
import '../../../../core/extensions/string_extensions.dart';
import '../../../../core/gen/assets.gen.dart';
import '../../../../core/router/router.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../core/theme/theme_extensions.dart';
import '../../../../features/my_bookings/domain/bloc/my_bookings_feature_bloc.dart';
import '../../../../features/my_bookings/domain/models/my_bookings_feature_bloc_data/my_bookings_feature_bloc_data.dart';
import '../../../../features/my_bookings/domain/models/type_policy/type_policy.dart';
import '../../../../features/my_bookings/my_bookings_feature.dart';
import '../../../../features/my_orders/domain/bloc/my_orders_feature_bloc.dart';
import '../../../../features/my_orders/domain/models/limit_policy/limit_policy.dart';
import '../../../../features/my_orders/domain/models/my_orders_feature_bloc_data/my_orders_feature_bloc_data.dart';
import '../../../../features/my_orders/my_orders_feature.dart';
import '../../../../main.dart';
import '../../../ui/app_button.dart';
import '../../../ui/pages/error_page.dart';
import '../../../ui/pages/loading_page.dart';
import '../../../ui/wrappers/tappable.dart';
import '../../../ui/wrappers/telegram/telegram_user_wrapper.dart';
import '../../../ui/wrappers/telegram/telegram_wrapper.dart';
import '../../admin/features/general/domain/models/admin_stats_item.dart';
import '../../base/widgets/base_app_bar.dart';
import '../../images_viewer/presentation/images_viewer_screen.dart';
import '../domain/bloc/admin_panel_bloc/admin_panel_bloc.dart';
import '../domain/bloc/audio_player_bloc/audio_player_bloc.dart';
import '../domain/bloc/home_bloc/home_bloc.dart';
import '../domain/models/example.dart';
import '../domain/models/example_genre.dart';
import '../domain/models/example_service_type.dart';
import '../domain/models/home_bloc_data/home_bloc_data.dart';

part 'widgets/about/about.dart';
part 'widgets/about/widgets/button.dart';
part 'widgets/about/widgets/features/features.dart';
part 'widgets/about/widgets/features/widgets/feature.dart';
part 'widgets/about/widgets/features/widgets/yandex_maps_iframe.dart';
part 'widgets/about/widgets/gallery/gallery.dart';
part 'widgets/about/widgets/gallery/widgets/image_card.dart';
part 'widgets/about/widgets/header.dart';
part 'widgets/about/widgets/text.dart';
part 'widgets/action_buttons.dart';
part 'widgets/admin_panel/admin_panel.dart';
part 'widgets/admin_panel/widgets/buttons.dart';
part 'widgets/admin_panel/widgets/content.dart';
part 'widgets/admin_panel/widgets/disclaimer.dart';
part 'widgets/admin_panel/widgets/header.dart';
part 'widgets/admin_panel/widgets/stats_card.dart';
part 'widgets/debug/debug_panel.dart';
part 'widgets/equipment/equipment.dart';
part 'widgets/equipment/widgets/header.dart';
part 'widgets/equipment/widgets/list.dart';
part 'widgets/equipment/widgets/tile.dart';
part 'widgets/examples/examples.dart';
part 'widgets/examples/widgets/button.dart';
part 'widgets/examples/widgets/card/card.dart';
part 'widgets/examples/widgets/card/widgets/properties.dart';
part 'widgets/examples/widgets/card/widgets/property_item.dart';
part 'widgets/examples/widgets/header.dart';
part 'widgets/examples/widgets/list.dart';
part 'widgets/footer/footer.dart';
part 'widgets/footer/widgets/tappable_text.dart';
part 'widgets/header.dart';
part 'widgets/loyalty/loyalty.dart';
part 'widgets/loyalty/widgets/card.dart';
part 'widgets/loyalty/widgets/header.dart';
part 'widgets/loyalty/widgets/more_button.dart';
part 'widgets/loyalty/widgets/points.dart';
part 'widgets/my_orders.dart';
part 'widgets/my_upcoming_booking.dart';
part 'widgets/promo_text.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => $<HomeBloc>(
            param1: HomeBlocData(
              myOrdersFeatureBloc: $<MyOrdersFeatureBloc>(
                param1: const MyOrdersFeatureBlocData(
                  limitPolicy: MyOrdersLimitPolicy.limited,
                ),
              ),
              myBookingsFeatureBloc: $<MyBookingsFeatureBloc>(
                param1: const MyBookingsFeatureBlocData(
                  typePolicy: MyBookingsTypePolicy.single,
                ),
              ),
            ),
          ),
        ),
        BlocProvider(create: (context) => $<AdminPanelBloc>()),
      ],
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.hasError) return const ErrorPage();
            if (state.isLoading) return const LoadingPage();

            return const CustomScrollView(
              slivers: [
                BaseAppBar(),
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
    return SliverToBoxAdapter(
      child: Container(
        color: context.colors.background,
        padding: const Pad(top: 70),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _DebugPanel(),
            _Header(),
            _AdminPanel(),
            Gap(20),
            _MyUpcomingBooking(),
            _MyOrders(),
            _Loyalty(),
            Gap(40),
            _ActionButtons(),
            Gap(60),
            _About(),
            Gap(60),
            _Equipment(),
            Gap(40),
            _Examples(),
            Gap(40),
            _PromoText(),
            Gap(20),
            _ActionButtons(),
            Gap(40),
            _Footer(),
          ],
        ),
      ),
    );
  }
}
