import '../../../../../../../features/my_orders/domain/models/order/service/order_service_type.dart';

enum StaffServiceType {
  RECORDING('Запись'),
  MIX('Сведение', type: OrderServiceType.MIX),
  MASTERING('Мастеринг', type: OrderServiceType.MASTERING),
  BEAT('Кастомный бит', type: OrderServiceType.BEAT);

  const StaffServiceType(this.title, {this.type});

  final String title;
  final OrderServiceType? type;
}
