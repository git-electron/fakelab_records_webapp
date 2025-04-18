import 'package:fakelab_records_webapp/core/domain/models/rating/rating.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/models/order/order_type.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/models/order/service/order_service.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/models/order/service/order_service_type.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/models/order/status_history_item/order_status_history_item.dart';

import '../domain/models/telegram/safe_area_inset.dart';
import '../domain/models/telegram/telegram_meta.dart';
import '../domain/models/telegram/telegram_user.dart';

class Mock {
  static const _photoFileName = 'QzaYKj8gtRiq3RqEWaoFAjlqDoTTcLn5DvXKCosQsfE';
  static final TelegramUser telegramUser = TelegramUser(
    id: 265685890,
    name: 'Mock',
    username: 'mock_user',
    photoUrl: 'https://t.me/i/userpic/320/$_photoFileName.svg',
  );

  static final TelegramMeta telegramMeta = TelegramMeta(
    platform: 'unknown',
    safeAreaInset: SafeAreaInset(top: 55, left: 0, right: 0, bottom: 20),
    contentSafeAreaInset: SafeAreaInset(top: 45, left: 0, right: 0, bottom: 0),
  );

  static final User user = User(
    id: 265685890,
    firstName: 'Egorick',
    lastName: '',
    username: 'raimeeee',
    phoneNumber: '+79312882004',
  );

  static final DateTime _now = DateTime.now();
  static final List<Order> orders = <Order>[
    Order(
      id: '5528550526019438',
      customer: user,
      type: OrderType.BEAT,
      status: OrderStatus.REQUEST,
      statusHistory: [
        OrderStatusHistoryItem(
          status: OrderStatus.REQUEST,
          dateChanged: _now,
        ),
      ],
      dateCreated: _now,
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
      id: '5528550542352378',
      customer: user,
      type: OrderType.MIX_AND_MASTERING,
      status: OrderStatus.REQUEST,
      statusHistory: [
        OrderStatusHistoryItem(
          status: OrderStatus.REQUEST,
          dateChanged: _now.subtract(const Duration(days: 2)),
        ),
      ],
      dateCreated: _now.subtract(const Duration(days: 2)),
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
      id: '5528550558518074',
      customer: user,
      type: OrderType.MIX,
      status: OrderStatus.PENDING,
      statusHistory: [
        OrderStatusHistoryItem(
          status: OrderStatus.REQUEST,
          dateChanged: _now.subtract(const Duration(days: 3)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.PENDING,
          dateChanged: _now.subtract(const Duration(days: 2, hours: 20)),
        ),
      ],
      dateCreated: _now.subtract(const Duration(days: 3)),
      totalCost: 4000,
      costFrom: false,
      services: [
        OrderService(
          type: OrderServiceType.MIX,
          totalCost: 4000,
          costFrom: false,
        ),
      ],
    ),
    Order(
      id: '5528550578537165',
      customer: user,
      type: OrderType.MIX_AND_MASTERING,
      status: OrderStatus.IN_PROGRESS,
      statusHistory: [
        OrderStatusHistoryItem(
          status: OrderStatus.REQUEST,
          dateChanged: _now.subtract(const Duration(days: 8)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.PENDING,
          dateChanged: _now.subtract(const Duration(days: 7, hours: 19)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.IN_PROGRESS,
          dateChanged: _now.subtract(const Duration(days: 4)),
        ),
      ],
      dateCreated: _now.subtract(const Duration(days: 8)),
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
    Order(
      id: '5528550578537165',
      customer: user,
      type: OrderType.BEAT,
      status: OrderStatus.COMPLETED,
      statusHistory: [
        OrderStatusHistoryItem(
          status: OrderStatus.REQUEST,
          dateChanged: _now.subtract(const Duration(days: 18)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.PENDING,
          dateChanged: _now.subtract(const Duration(days: 17, hours: 3)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.IN_PROGRESS,
          dateChanged: _now.subtract(const Duration(days: 15)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.AWAITING_CONFIRMATION,
          dateChanged: _now.subtract(const Duration(days: 11)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.IN_PROGRESS,
          dateChanged: _now.subtract(const Duration(days: 10, hours: 20)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.AWAITING_CONFIRMATION,
          dateChanged: _now.subtract(const Duration(days: 9)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.COMPLETED,
          dateChanged: _now.subtract(const Duration(days: 8, hours: 22)),
        ),
      ],
      dateCreated: _now.subtract(const Duration(days: 18)),
      totalCost: 10000,
      costFrom: false,
      services: [
        OrderService(
          type: OrderServiceType.BEAT,
          totalCost: 10000,
          costFrom: false,
        ),
      ],
      rating: Rating(
        rating: 5,
        comment: 'Заебись!!!',
      ),
    ),
    Order(
      id: '5528550578559423',
      customer: user,
      type: OrderType.BEAT,
      status: OrderStatus.CANCELLED,
      statusHistory: [
        OrderStatusHistoryItem(
          status: OrderStatus.REQUEST,
          dateChanged: _now.subtract(const Duration(days: 19)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.CANCELLED,
          dateChanged: _now.subtract(const Duration(days: 18, hours: 23)),
        ),
      ],
      dateCreated: _now.subtract(const Duration(days: 19)),
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
  ];
}
