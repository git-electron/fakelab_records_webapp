import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/service/order_service_type.dart';

import 'service/order_service.dart';

enum OrderType {
  MIX('Сведение', totalCost: 2500),
  MASTERING('Мастеринг', totalCost: 500, costFrom: false),
  BEAT(
    'Кастомный бит',
    titleForCard: 'Кастомный\nбит',
    totalCost: 10000,
  ),
  MIX_AND_MASTERING(
    'Сведение и мастеринг',
    titleForCard: 'Сведение\nмастеринг',
    totalCost: 3000,
  );

  const OrderType(
    this.title, {
    this.titleForCard,
    this.costFrom = true,
    required this.totalCost,
  });

  final String title;
  final bool costFrom;
  final double totalCost;
  final String? titleForCard;

  List<OrderService> get services => switch (this) {
        OrderType.MIX => [
            OrderService(
              type: OrderServiceType.MIX,
              totalCost: 2500,
              costFrom: true,
            ),
          ],
        OrderType.MASTERING => [
            OrderService(
              type: OrderServiceType.MASTERING,
              totalCost: 500,
              costFrom: false,
            ),
          ],
        OrderType.BEAT => [
            OrderService(
              type: OrderServiceType.BEAT,
              totalCost: 10000,
              costFrom: true,
            ),
          ],
        OrderType.MIX_AND_MASTERING => [
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
      };
}
