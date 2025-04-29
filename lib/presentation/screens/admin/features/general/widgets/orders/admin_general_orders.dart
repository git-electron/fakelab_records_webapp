import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/core/utils/scroll_physics/snap_bounce_scroll_physics.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_bloc/admin_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/models/admin_tab.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/empty_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'admin_order_card.dart';

class AdminGeneralOrders extends StatelessWidget {
  const AdminGeneralOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;
    final bool isFillingScreen = size.width < 1500;

    return BlocBuilder<AdminOrdersBloc, AdminOrdersState>(
      builder: (context, state) {
        if (state.isLoading) return LoadingPage(height: isMobile ? 120 : 140);
        if (state.hasError) {
          return ErrorPage(message: state.message, height: 300);
        }
        if (!state.hasOrders) return const EmptyPage(height: 300);

        final List<Order> orders = state.orders!;

        return Container(
          padding: const Pad(bottom: 20),
          margin: isFillingScreen ? null : const Pad(horizontal: 20),
          clipBehavior: isFillingScreen ? Clip.none : Clip.antiAlias,
          decoration: BoxDecoration(color: context.colors.background),
          child: SizedBox(
            height: isMobile ? 120 : 140,
            child: ListView.separated(
              itemCount: orders.length + 1,
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              physics: const SnapBounceScrollPhysics(itemWidth: 210),
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) => Padding(
                padding: Pad(
                  left: index == 0 && isFillingScreen ? 20 : 0,
                  right: index == orders.length && isFillingScreen ? 20 : 0,
                ),
                child: index == orders.length
                    ? const AllOrdersButton()
                    : AdminOrderCard(orders[index]),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AllOrdersButton extends StatelessWidget {
  const AllOrdersButton({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminBloc bloc = context.read();

    return Tappable(
      onTap: () => bloc.add(const AdminEvent.tabChabged(AdminTab.orders)),
      child: Container(
        height: 120,
        padding: const Pad(all: 15),
        decoration: ShapeDecoration(
          color: context.colors.onBackground,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 20,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          'Все\nзаказы',
          style: context.styles.footer1.copyWith(
            color: context.colors.background,
          ),
        ),
      ),
    );
  }
}
