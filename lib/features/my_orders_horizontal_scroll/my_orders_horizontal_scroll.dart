import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import '../../core/domain/models/user/user.dart';
import '../../core/utils/scroll_physics/snap_bounce_scroll_physics.dart';
import 'widgets/order_card.dart';
import '../../presentation/screens/my_orders/domain/models/order/order.dart';
import '../../presentation/screens/my_orders/domain/models/order/order_status.dart';
import '../../presentation/screens/my_orders/domain/models/order/order_type.dart';
import '../../presentation/screens/my_orders/domain/models/order/service/order_service.dart';
import '../../presentation/screens/my_orders/domain/models/order/service/order_service_type.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyOrdersHorizontalScroll extends StatelessWidget {
  const MyOrdersHorizontalScroll({
    required this.orders,
    super.key,
  });

  final List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        itemCount: orders.length,
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        physics: const SnapBounceScrollPhysics(itemWidth: 210),
        separatorBuilder: (context, index) => const Gap(10),
        itemBuilder: (context, index) => Padding(
          padding: Pad(
            left: index == 0 ? 20 : 0,
            right: index == orders.length - 1 ? 20 : 0,
          ),
          child: OrderCard(orders[index]),
        ),
      ),
    );
  }
}

List<Order> mockOrders = <Order>[
  Order(
    id: '583450349573',
    customer: User(
      id: 543545,
      firstName: 'Egorick',
      lastName: '',
      username: 'raimeeee',
      phoneNumber: '+79312882004',
    ),
    type: OrderType.BEAT,
    status: OrderStatus.IN_PROGRESS,
    statusHistory: [],
    dateCreated: DateTime.now(),
    totalCost: 10000,
    costFrom: false,
    services: [
      OrderService(
        type: OrderServiceType.BEAT,
        totalCost: 10000,
        costFrom: false,
      ),
    ],
  ),
  Order(
    id: '45678457456784',
    customer: User(
      id: 543545,
      firstName: 'Egorick',
      lastName: '',
      username: 'raimeeee',
      phoneNumber: '+79312882004',
    ),
    type: OrderType.MIX_AND_MASTERING,
    status: OrderStatus.PENDING,
    statusHistory: [],
    dateCreated: DateTime.now().subtract(const Duration(days: 2)),
    totalCost: 3000,
    costFrom: true,
    services: [
      OrderService(
        type: OrderServiceType.MIX,
        totalCost: 2500,
        costFrom: true,
      ),
      OrderService(
        type: OrderServiceType.MASTERING,
        totalCost: 500,
        costFrom: false,
      ),
    ],
  ),
  Order(
    id: '7456237675676783456',
    customer: User(
      id: 543545,
      firstName: 'Egorick',
      lastName: '',
      username: 'raimeeee',
      phoneNumber: '+79312882004',
    ),
    type: OrderType.MIX,
    status: OrderStatus.AWAITING_CONFIRMATION,
    statusHistory: [],
    dateCreated: DateTime.now().subtract(const Duration(days: 7)),
    totalCost: 3000,
    costFrom: false,
    services: [
      OrderService(
        type: OrderServiceType.MIX,
        totalCost: 3000,
        costFrom: false,
      ),
    ],
  ),
];
