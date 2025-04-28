import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart';
import 'package:fakelab_records_webapp/core/extensions/list_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/num_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/domain/bloc/admin_panel_bloc/admin_panel_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class HomeScreenAdminPanel extends StatelessWidget {
  const HomeScreenAdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminPanelBloc bloc = context.read();

    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final bool shouldDisplayPanel = state.user?.isAdmin ?? false;
        if (!shouldDisplayPanel) return const SizedBox();

        return Container(
          width: double.infinity,
          padding: const Pad(all: 20),
          margin: const Pad(horizontal: 20, top: 20),
          decoration: ShapeDecoration(
            color: context.colors.card,
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 20,
                cornerSmoothing: 0.6,
              ),
            ),
          ),
          child: BlocBuilder<AdminPanelBloc, AdminPanelState>(
            builder: (context, state) {
              if (state.isCollapsed) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Assets.icons.logo.records.admin.svg(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Assets.icons.eyeClosed.gray.svg(),
                            const Gap(10),
                            Text(
                              'Скрыто для\nэкономии трафика',
                              style: context.styles.footer3,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Gap(20),
                    Text(
                      'Для избежания перерасхода трафика, используй эту функцию только по необходимости',
                      style: context.styles.body2,
                    ),
                    const Gap(20),
                    AppButton.primary(
                      onTap: () {
                        bloc.add(const AdminPanelEvent.setExpanded());
                      },
                      text: 'Показать данные',
                      icon: Assets.icons.eye.dark,
                    ),
                    const Gap(10),
                    AppButton.secondary(
                      onTap: () => context.pushRoute(const AdminRoute()),
                      text: 'В админ-панель',
                      icon: Assets.icons.arrowRight.light,
                    ),
                  ],
                );
              }

              if (state.isLoading) return const LoadingPage(height: 400);
              if (state.hasError) {
                return ErrorPage(message: state.message, height: 400);
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Assets.icons.logo.records.admin.svg(height: 20),
                  const Gap(15),
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
                    ].alternateWith(const Gap(5)),
                  ),
                  const Gap(10),
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
                  const Gap(15),
                  AppButton.primary(
                    onTap: () => context.pushRoute(const AdminRoute()),
                    text: 'В админ-панель',
                    icon: Assets.icons.arrowRight.dark,
                  ),
                ],
              );
            },
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
    return Expanded(
      child: Opacity(
        opacity: isEnabled ? 1 : .25,
        child: Tappable(
          onTap: isEnabled ? () {} : null,
          child: Container(
            padding: const Pad(all: 20),
            decoration: ShapeDecoration(
              color: context.colors.background,
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
                Text(title, style: context.styles.body3),
                const Gap(5),
                Text(
                  value.toString(),
                  style: context.styles.title3.copyWith(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
