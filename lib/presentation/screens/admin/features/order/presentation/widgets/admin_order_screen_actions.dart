import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/domain/bloc/admin_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AdminOrderScreenActions extends StatelessWidget {
  const AdminOrderScreenActions({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 20,
            cornerSmoothing: 0.6,
          ),
        ),
      ),
      padding: const Pad(all: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Действия', style: context.styles.body1),
          const Gap(10),
          if (isMobile) ...[
            _actualActions(context),
            const Gap(10),
            _allActions(context),
          ] else
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _actualActions(context)),
                const Gap(20),
                Expanded(child: _allActions(context)),
              ],
            ),
        ],
      ),
    );
  }

  Widget _actualActions(BuildContext context) {
    return BlocBuilder<AdminOrderBloc, AdminOrderState>(
      builder: (context, state) {
        final OrderStatus status = state.order!.status;

        if ([OrderStatus.COMPLETED, OrderStatus.CANCELLED].contains(status)) {
          return const SizedBox();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Актуальное', style: context.styles.footer1),
            const Gap(10),
            const ActualActions(),
          ],
        );
      },
    );
  }

  Widget _allActions(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Все действия', style: context.styles.footer1),
          const Gap(10),
          const AllActions(),
        ],
      );
}

class ActualActions extends StatelessWidget {
  const ActualActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminOrderBloc, AdminOrderState>(
      builder: (context, state) {
        final OrderStatus status = state.order!.status;

        return switch (status) {
          OrderStatus.REQUEST => _requestActions(context),
          OrderStatus.PENDING => _pendingActions(context),
          OrderStatus.IN_PROGRESS => _inProgressActions(context),
          OrderStatus.AWAITING_CONFIRMATION =>
            _awaitingConfirmationActions(context),
          _ => const SizedBox(),
        };
      },
    );
  }

  Widget _requestActions(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    List<Widget> actions = [
      ExpandedWrapper(
        child: AppButton(
          onTap: () {},
          text: 'Принять',
          backgroundColor: context.colors.statuses.completed,
          contentColor: context.colors.background,
        ),
      ),
      const Gap(5),
      ExpandedWrapper(
        child: AppButton(
          onTap: () {},
          text: 'Отменить',
          backgroundColor: context.colors.primary,
          contentColor: context.colors.onBackground,
        ),
      ),
    ];

    return isMobile ? Row(children: actions) : Column(children: actions);
  }

  Widget _pendingActions(BuildContext context) {
    return AppButton(
      onTap: () {},
      text: 'Взять в работу',
      backgroundColor: context.colors.statuses.completed,
      contentColor: context.colors.background,
    );
  }

  Widget _inProgressActions(BuildContext context) {
    return AppButton(
      onTap: () {},
      text: 'На проверку клиентом',
      backgroundColor: context.colors.statuses.pending,
      contentColor: context.colors.background,
    );
  }

  Widget _awaitingConfirmationActions(BuildContext context) {
    return Row(
      children: [
        ExpandedWrapper(
          child: AppButton(
            onTap: () {},
            text: 'Заказ готов',
            backgroundColor: context.colors.statuses.completed,
            contentColor: context.colors.background,
          ),
        ),
        const Gap(5),
        ExpandedWrapper(
          child: AppButton(
            onTap: () {},
            text: 'Вернуть в работу',
            backgroundColor: context.colors.statuses.inProgress,
            contentColor: context.colors.background,
          ),
        ),
      ],
    );
  }
}

class ExpandedWrapper extends StatelessWidget {
  const ExpandedWrapper({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return isMobile ? Expanded(child: child) : child;
  }
}

class AllActions extends StatelessWidget {
  const AllActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton.primary(
          onTap: () {},
          icon: Assets.icons.pencil.dark,
          text: 'Изменить статус',
        ),
        const Gap(5),
        AppButton.primary(
          onTap: () {},
          icon: Assets.icons.money.dark,
          text: 'Изменить стоимость',
        ),
        const Gap(5),
        AppButton(
          onTap: () {},
          text: 'Отменить',
          backgroundColor: context.colors.primary,
          contentColor: context.colors.onBackground,
        ),
      ],
    );
  }
}
