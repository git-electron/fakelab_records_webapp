import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_order/domain/bloc/my_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class MyOrderScreenInfo extends StatelessWidget {
  const MyOrderScreenInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(builder: (context, meta) {
      return BlocBuilder<MyOrderBloc, MyOrderState>(
        builder: (context, state) {
          final Order order = state.order!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(meta.totalSafeAreaInset.top),
              const Gap(20),
              OrderStatusChip(order.status),
              const Gap(20),
              Text(
                order.type.title,
                style: context.styles.title2.copyWith(height: .85),
              ),
              const Gap(20),
              OrderIdCard(order.id),
            ],
          );
        },
      );
    });
  }
}

class OrderStatusChip extends StatelessWidget {
  const OrderStatusChip(this.status, {super.key});

  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const Pad(horizontal: 15, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: status.color,
      ),
      child: Text(
        status.title,
        style: context.styles.title3.copyWith(
          fontSize: 12,
          color: context.colors.background,
        ),
      ),
    );
  }
}

class OrderIdCard extends StatelessWidget {
  const OrderIdCard(this.orderId, {super.key});

  final String orderId;

  @override
  Widget build(BuildContext context) {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Номер заказа', style: context.styles.body1),
              const Gap(5),
              Text('#$orderId', style: context.styles.footer1),
            ],
          ),
          Tappable(
            onTap: () {
              Clipboard.setData(ClipboardData(text: orderId));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Скопировано')),
              );
            },
            child: Assets.icons.copy.svg(height: 30, width: 30),
          ),
        ],
      ),
    );
  }
}
