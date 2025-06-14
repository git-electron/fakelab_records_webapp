import '../../features/my_orders/domain/models/order/filters/order_filters.dart';
import '../../features/my_orders/domain/models/order/order.dart';
import '../../features/my_orders/domain/models/order/order_status.dart';
import '../../features/my_orders/domain/models/order/order_type.dart';
import '../../features/my_orders/domain/models/order/service/order_service.dart';
import '../../features/my_orders/domain/models/order/service/order_service_type.dart';
import '../../features/my_orders/domain/models/order/status_history_item/order_status_history_item.dart';
import '../../presentation/screens/admin/features/staff/domain/models/staff_activity.dart';
import '../../presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import '../../presentation/screens/admin/features/staff/domain/models/staff_service_type.dart';
import '../../features/my_bookings/domain/models/booking/booking.dart';
import '../../features/my_bookings/domain/models/booking/booking_status.dart';
import '../../features/my_bookings/domain/models/booking/filters/booking_filters.dart';
import '../domain/models/rating/rating.dart';
import '../domain/models/telegram/safe_area_inset.dart';
import '../domain/models/telegram/telegram_meta.dart';
import '../domain/models/telegram/telegram_user.dart';
import '../domain/models/user/user.dart';
import '../utils/try_or/try_or_null.dart';

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
    safeAreaInset: SafeAreaInset(top: 25, left: 0, right: 0, bottom: 20),
    contentSafeAreaInset: SafeAreaInset(top: 30, left: 0, right: 0, bottom: 0),
    isFullscreen: false,
  );

  static final User user = User(
    id: 265685890,
    firstName: 'Egorick',
    lastName: '',
    username: 'raimeeee',
    phoneNumber: '+79312882004',
  );

  static final DateTime _now = DateTime.now().toUtc();
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
      filters: OrderFilters(
        userIdStatusType:
            '${user.id}-${OrderStatus.REQUEST.name}-${OrderType.BEAT.name}',
      ),
      dateCreated: _now,
      dateChanged: _now,
      totalCost: 10000,
      costFrom: true,
      services: [
        OrderService(
          type: OrderServiceType.BEAT,
          totalCost: 10000,
          costFrom: true,
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
      filters: OrderFilters(
        userIdStatusType:
            '${user.id}-${OrderStatus.REQUEST.name}-${OrderType.MIX_AND_MASTERING.name}',
      ),
      dateCreated: _now.subtract(const Duration(days: 2)),
      dateChanged: _now.subtract(const Duration(days: 2)),
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
      filters: OrderFilters(
        userIdStatusType:
            '${user.id}-${OrderStatus.PENDING.name}-${OrderType.MIX.name}',
      ),
      dateCreated: _now.subtract(const Duration(days: 3)),
      dateChanged: _now.subtract(const Duration(days: 2, hours: 20)),
      totalCost: 4000,
      costFrom: false,
      assignee: getStaffMember('5528559284548329'),
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
      filters: OrderFilters(
        userIdStatusType:
            '${user.id}-${OrderStatus.IN_PROGRESS.name}-${OrderType.MIX_AND_MASTERING.name}',
      ),
      dateCreated: _now.subtract(const Duration(days: 8)),
      dateChanged: _now.subtract(const Duration(days: 4)),
      totalCost: 3000,
      costFrom: false,
      assignee: getStaffMember('5528559284548329'),
      services: [
        OrderService(
          type: OrderServiceType.MIX,
          totalCost: 3000,
          costFrom: false,
        ),
        OrderService(
          type: OrderServiceType.MASTERING,
          totalCost: 500,
          costFrom: false,
        ),
      ],
    ),
    Order(
      id: '5528550578549815',
      customer: user,
      type: OrderType.BEAT,
      status: OrderStatus.COMPLETED,
      statusHistory: [
        OrderStatusHistoryItem(
          status: OrderStatus.REQUEST,
          dateChanged: _now.subtract(const Duration(days: 28)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.PENDING,
          dateChanged: _now.subtract(const Duration(days: 27, hours: 3)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.IN_PROGRESS,
          dateChanged: _now.subtract(const Duration(days: 25)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.AWAITING_CONFIRMATION,
          dateChanged: _now.subtract(const Duration(days: 21)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.IN_PROGRESS,
          dateChanged: _now.subtract(const Duration(days: 20, hours: 20)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.AWAITING_CONFIRMATION,
          dateChanged: _now.subtract(const Duration(days: 19)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.COMPLETED,
          dateChanged: _now.subtract(const Duration(days: 18, hours: 22)),
        ),
      ],
      filters: OrderFilters(
        userIdStatusType:
            '${user.id}-${OrderStatus.COMPLETED.name}-${OrderType.BEAT.name}',
      ),
      dateCreated: _now.subtract(const Duration(days: 28)),
      dateChanged: _now.subtract(const Duration(days: 18, hours: 22)),
      totalCost: 10000,
      costFrom: false,
      services: [
        OrderService(
          type: OrderServiceType.BEAT,
          totalCost: 10000,
          costFrom: false,
        ),
      ],
      assignee: getStaffMember('5528559284548329'),
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
          dateChanged: _now.subtract(const Duration(days: 29)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.CANCELLED,
          dateChanged: _now.subtract(const Duration(days: 28, hours: 23)),
        ),
      ],
      filters: OrderFilters(
        userIdStatusType:
            '${user.id}-${OrderStatus.CANCELLED.name}-${OrderType.BEAT.name}',
      ),
      dateCreated: _now.subtract(const Duration(days: 29)),
      dateChanged: _now.subtract(const Duration(days: 28, hours: 23)),
      totalCost: 10000,
      costFrom: false,
      assignee: getStaffMember('5588028127449327'),
      services: [
        OrderService(
          type: OrderServiceType.BEAT,
          totalCost: 10000,
          costFrom: false,
        ),
      ],
    ),
    Order(
      id: '5528550544544851',
      customer: user,
      type: OrderType.MIX_AND_MASTERING,
      status: OrderStatus.COMPLETED,
      statusHistory: [
        OrderStatusHistoryItem(
          status: OrderStatus.REQUEST,
          dateChanged: _now.subtract(const Duration(days: 74)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.PENDING,
          dateChanged: _now.subtract(const Duration(days: 73, hours: 3)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.IN_PROGRESS,
          dateChanged: _now.subtract(const Duration(days: 71)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.AWAITING_CONFIRMATION,
          dateChanged: _now.subtract(const Duration(days: 67)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.IN_PROGRESS,
          dateChanged: _now.subtract(const Duration(days: 66, hours: 20)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.AWAITING_CONFIRMATION,
          dateChanged: _now.subtract(const Duration(days: 65)),
        ),
        OrderStatusHistoryItem(
          status: OrderStatus.COMPLETED,
          dateChanged: _now.subtract(const Duration(days: 64, hours: 22)),
        ),
      ],
      filters: OrderFilters(
        userIdStatusType:
            '${user.id}-${OrderStatus.COMPLETED.name}-${OrderType.BEAT.name}',
      ),
      dateCreated: _now.subtract(const Duration(days: 74)),
      dateChanged: _now.subtract(const Duration(days: 64, hours: 22)),
      totalCost: 3000,
      costFrom: false,
      services: [
        OrderService(
          type: OrderServiceType.MIX,
          totalCost: 2500,
          costFrom: false,
        ),
        OrderService(
          type: OrderServiceType.MASTERING,
          totalCost: 500,
          costFrom: false,
        ),
      ],
      assignee: getStaffMember('5528559284548329'),
      rating: Rating(
        rating: 3,
        comment: 'Ну такое',
      ),
    ),
  ];

  static Order? getOrder(String orderId) =>
      tryOrNull(() => orders.firstWhere((order) => order.id == orderId));

  static final List<Booking> bookings = <Booking>[
    Booking(
      id: '5528550544544851',
      customer: user,
      status: BookingStatus.COMPLETED,
      statusHistory: [],
      dateCreated: _now.subtract(const Duration(days: 1)),
      dateChanged: _now.subtract(const Duration(days: 1)),
      assignee: getStaffMember('5528559284548329'),
      date: DateTime(_now.year, _now.month, _now.day, 12).toUtc(),
      totalCost: 2500,
      duration: const Duration(hours: 2, minutes: 30),
      filters: BookingFilters(
        userIdStatus: '${user.id}-${BookingStatus.COMPLETED.name}',
      ),
      rating: Rating(
        rating: 3,
        comment: 'Ну такое',
      ),
    ),
    Booking(
      id: '5528550544589537',
      customer: user,
      status: BookingStatus.PENDING,
      statusHistory: [],
      dateCreated: _now.subtract(const Duration(days: 1)),
      dateChanged: _now.subtract(const Duration(days: 1)),
      assignee: getStaffMember('5528559284548329'),
      date: DateTime(_now.year, _now.month, _now.day, 18).toUtc(),
      totalCost: 2500,
      duration: const Duration(hours: 3),
      filters: BookingFilters(
        userIdStatus: '${user.id}-${BookingStatus.PENDING.name}',
      ),
    ),
    Booking(
      id: '5528550544559483',
      customer: user,
      status: BookingStatus.PENDING,
      statusHistory: [],
      dateCreated: _now.subtract(const Duration(days: 1)),
      dateChanged: _now.subtract(const Duration(days: 1)),
      assignee: getStaffMember('5528559284548329'),
      date: DateTime(_now.year, _now.month, _now.day + 3, 8).toUtc(),
      totalCost: 2500,
      duration: const Duration(hours: 15),
      filters: BookingFilters(
        userIdStatus: '${user.id}-${BookingStatus.PENDING.name}',
      ),
    ),
    Booking(
      id: '5528550544559483',
      customer: user,
      status: BookingStatus.PENDING,
      statusHistory: [],
      dateCreated: _now.subtract(const Duration(days: 1)),
      dateChanged: _now.subtract(const Duration(days: 1)),
      assignee: getStaffMember('5528559284548329'),
      date: DateTime(_now.year, _now.month, _now.day + 5, 8).toUtc(),
      totalCost: 2500,
      duration: const Duration(hours: 15),
      filters: BookingFilters(
        userIdStatus: '${user.id}-${BookingStatus.PENDING.name}',
      ),
    ),
    Booking(
      id: '5528550544559483',
      customer: user,
      status: BookingStatus.PENDING,
      statusHistory: [],
      dateCreated: _now.subtract(const Duration(days: 1)),
      dateChanged: _now.subtract(const Duration(days: 1)),
      assignee: getStaffMember('5528559284548329'),
      date: DateTime(_now.year, _now.month, _now.day + 6, 8).toUtc(),
      totalCost: 2500,
      duration: const Duration(hours: 15),
      filters: BookingFilters(
        userIdStatus: '${user.id}-${BookingStatus.PENDING.name}',
      ),
    ),
  ];

  static Booking? getBooking(String bookingId) => tryOrNull(
      () => bookings.firstWhere((booking) => booking.id == bookingId));

  static List<StaffMember> staffMembers = <StaffMember>[
    StaffMember(
      id: '5528559284548329',
      firstName: 'Егор',
      lastName: 'Мядзюта',
      username: 'raimee',
      activities: StaffActivity.values,
      services: StaffServiceType.values,
    ),
    StaffMember(
      id: '5588028127449327',
      firstName: 'Константин',
      lastName: 'Медведев',
      username: 'kontree',
      activities: [
        StaffActivity.ARTIST,
        StaffActivity.PRODUCER,
        StaffActivity.SOUND_ENGINEER,
      ],
      services: [
        StaffServiceType.BEAT,
        StaffServiceType.RECORDING,
      ],
    ),
  ];

  static StaffMember? getStaffMember(String staffMemberId) =>
      tryOrNull(() => staffMembers.firstWhere(
            (staffMember) => staffMember.id == staffMemberId,
          ));

  static List<User> clients = List.generate(
    50,
    (index) => User(
      id: index,
      firstName: 'Test$index',
      lastName: 'Testovich$index',
      username: 'test_username_$index',
      phoneNumber: '+79999999999',
    ),
  );

  static User? getClient(int clientId) => tryOrNull(() => clients.firstWhere(
        (client) => client.id == clientId,
      ));
}
