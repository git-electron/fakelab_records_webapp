import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/list_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/num_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AdminGeneralStats extends StatelessWidget {
  const AdminGeneralStats({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return BlocBuilder<AdminOrdersBloc, AdminOrdersState>(
      builder: (context, state) {
        if (state.isLoading) return const LoadingPage(height: 400);
        if (state.hasError) {
          return ErrorPage(message: state.message, height: 400);
        }

        return Padding(
          padding: const Pad(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const AdminStatsCard(
                    title: 'Клиенты',
                    value: 0,
                    isEnabled: false,
                  ),
                  const AdminStatsCard(
                    title: 'Брони',
                    value: 0,
                    isEnabled: false,
                  ),
                  if (!isMobile) ...[
                    AdminStatsCard(
                      title: 'Заявки',
                      value: state.requestCount,
                    ),
                    AdminStatsCard(
                      title: 'В очереди',
                      value: state.pendingCount,
                    ),
                    AdminStatsCard(
                      title: 'В работе',
                      value: state.inProgressCount,
                    ),
                  ],
                ].alternateWith(const Gap(5)),
              ),
              if (isMobile) const Gap(10),
              if (isMobile)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AdminStatsCard(
                      title: 'Заявки',
                      value: state.requestCount,
                    ),
                    AdminStatsCard(
                      title: 'В очереди',
                      value: state.pendingCount,
                    ),
                    AdminStatsCard(
                      title: 'В работе',
                      value: state.inProgressCount,
                    ),
                  ].alternateWith(const Gap(5)),
                ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AdminStatsCard(
                    title: 'Доход за месяц',
                    value: state.totalIncome.formatCurrency(),
                  ),
                ].alternateWith(const Gap(5)),
              ),
            ],
          ),
        );
      },
    );
  }
}

class AdminStatsCard extends StatelessWidget {
  const AdminStatsCard({
    required this.title,
    required this.value,
    this.isEnabled = true,
    super.key,
  });

  final String title;
  final dynamic value;

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Expanded(
      child: Opacity(
        opacity: isEnabled ? 1 : .25,
        child: Tappable(
          onTap: isEnabled ? () {} : null,
          child: Container(
            padding: Pad(all: isMobile ? 20 : 25),
            decoration: ShapeDecoration(
              color: context.colors.card,
              shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius(
                  cornerRadius: 20,
                  cornerSmoothing: 0.6,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: isMobile
                      ? context.styles.footer2
                      : context.styles.footer1,
                ),
                const Gap(5),
                Text(
                  value.toString(),
                  style: context.styles.title3.copyWith(
                    fontSize: isMobile ? 20 : 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
