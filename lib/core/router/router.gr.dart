// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart'
    as _i23;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart'
    as _i19;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart'
    as _i21;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart'
    as _i22;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/create_client/presentation/admin_create_client_screen.dart'
    as _i1;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/edit_client/presentation/admin_edit_client_screen.dart'
    as _i4;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/create_order/presentation/admin_create_order_screen.dart'
    as _i2;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/order/presentation/admin_order_screen.dart'
    as _i6;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart'
    as _i24;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/create_staff_member/presentation/admin_create_staff_member_screen.dart'
    as _i3;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/edit_staff_member/presentation/admin_edit_staff_member_screen.dart'
    as _i5;
import 'package:fakelab_records_webapp/presentation/screens/admin/presentation/admin_screen.dart'
    as _i7;
import 'package:fakelab_records_webapp/presentation/screens/base/base_screen.dart'
    as _i8;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc/bookings_bloc.dart'
    as _i25;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_date/presentation/book_recording_date_screen.dart'
    as _i9;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/presentation/book_recording_time_screen.dart'
    as _i11;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/presentation/book_recording_screen.dart'
    as _i10;
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/home_screen.dart'
    as _i12;
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/presentation/images_viewer_screen.dart'
    as _i13;
import 'package:fakelab_records_webapp/presentation/screens/loyalty/loyalty_screen.dart'
    as _i14;
import 'package:fakelab_records_webapp/presentation/screens/my_order/presentation/my_order_screen.dart'
    as _i15;
import 'package:fakelab_records_webapp/presentation/screens/my_orders/presentation/my_orders_screen.dart'
    as _i16;
import 'package:fakelab_records_webapp/presentation/screens/unsupported/unsupported_screen.dart'
    as _i17;
import 'package:flutter/material.dart' as _i20;

/// generated route for
/// [_i1.AdminCreateClientScreen]
class AdminCreateClientRoute
    extends _i18.PageRouteInfo<AdminCreateClientRouteArgs> {
  AdminCreateClientRoute({
    required _i19.AdminClientsBloc adminClientsBloc,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         AdminCreateClientRoute.name,
         args: AdminCreateClientRouteArgs(
           adminClientsBloc: adminClientsBloc,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AdminCreateClientRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminCreateClientRouteArgs>();
      return _i1.AdminCreateClientScreen(
        adminClientsBloc: args.adminClientsBloc,
        key: args.key,
      );
    },
  );
}

class AdminCreateClientRouteArgs {
  const AdminCreateClientRouteArgs({required this.adminClientsBloc, this.key});

  final _i19.AdminClientsBloc adminClientsBloc;

  final _i20.Key? key;

  @override
  String toString() {
    return 'AdminCreateClientRouteArgs{adminClientsBloc: $adminClientsBloc, key: $key}';
  }
}

/// generated route for
/// [_i2.AdminCreateOrderScreen]
class AdminCreateOrderRoute
    extends _i18.PageRouteInfo<AdminCreateOrderRouteArgs> {
  AdminCreateOrderRoute({
    required _i21.AdminOrdersBloc adminOrdersBloc,
    required _i19.AdminClientsBloc adminClientsBloc,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         AdminCreateOrderRoute.name,
         args: AdminCreateOrderRouteArgs(
           adminOrdersBloc: adminOrdersBloc,
           adminClientsBloc: adminClientsBloc,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AdminCreateOrderRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminCreateOrderRouteArgs>();
      return _i2.AdminCreateOrderScreen(
        adminOrdersBloc: args.adminOrdersBloc,
        adminClientsBloc: args.adminClientsBloc,
        key: args.key,
      );
    },
  );
}

class AdminCreateOrderRouteArgs {
  const AdminCreateOrderRouteArgs({
    required this.adminOrdersBloc,
    required this.adminClientsBloc,
    this.key,
  });

  final _i21.AdminOrdersBloc adminOrdersBloc;

  final _i19.AdminClientsBloc adminClientsBloc;

  final _i20.Key? key;

  @override
  String toString() {
    return 'AdminCreateOrderRouteArgs{adminOrdersBloc: $adminOrdersBloc, adminClientsBloc: $adminClientsBloc, key: $key}';
  }
}

/// generated route for
/// [_i3.AdminCreateStaffMemberScreen]
class AdminCreateStaffMemberRoute
    extends _i18.PageRouteInfo<AdminCreateStaffMemberRouteArgs> {
  AdminCreateStaffMemberRoute({
    required _i22.AdminStaffBloc adminStaffBloc,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         AdminCreateStaffMemberRoute.name,
         args: AdminCreateStaffMemberRouteArgs(
           adminStaffBloc: adminStaffBloc,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AdminCreateStaffMemberRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminCreateStaffMemberRouteArgs>();
      return _i3.AdminCreateStaffMemberScreen(
        adminStaffBloc: args.adminStaffBloc,
        key: args.key,
      );
    },
  );
}

class AdminCreateStaffMemberRouteArgs {
  const AdminCreateStaffMemberRouteArgs({
    required this.adminStaffBloc,
    this.key,
  });

  final _i22.AdminStaffBloc adminStaffBloc;

  final _i20.Key? key;

  @override
  String toString() {
    return 'AdminCreateStaffMemberRouteArgs{adminStaffBloc: $adminStaffBloc, key: $key}';
  }
}

/// generated route for
/// [_i4.AdminEditClientScreen]
class AdminEditClientRoute
    extends _i18.PageRouteInfo<AdminEditClientRouteArgs> {
  AdminEditClientRoute({
    required _i23.User client,
    required _i19.AdminClientsBloc adminClientsBloc,
    required String id,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         AdminEditClientRoute.name,
         args: AdminEditClientRouteArgs(
           client: client,
           adminClientsBloc: adminClientsBloc,
           id: id,
           key: key,
         ),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'AdminEditClientRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminEditClientRouteArgs>();
      return _i4.AdminEditClientScreen(
        client: args.client,
        adminClientsBloc: args.adminClientsBloc,
        id: args.id,
        key: args.key,
      );
    },
  );
}

class AdminEditClientRouteArgs {
  const AdminEditClientRouteArgs({
    required this.client,
    required this.adminClientsBloc,
    required this.id,
    this.key,
  });

  final _i23.User client;

  final _i19.AdminClientsBloc adminClientsBloc;

  final String id;

  final _i20.Key? key;

  @override
  String toString() {
    return 'AdminEditClientRouteArgs{client: $client, adminClientsBloc: $adminClientsBloc, id: $id, key: $key}';
  }
}

/// generated route for
/// [_i5.AdminEditStaffMemberScreen]
class AdminEditStaffMemberRoute
    extends _i18.PageRouteInfo<AdminEditStaffMemberRouteArgs> {
  AdminEditStaffMemberRoute({
    required _i24.StaffMember staffMember,
    required _i22.AdminStaffBloc adminStaffBloc,
    required String id,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         AdminEditStaffMemberRoute.name,
         args: AdminEditStaffMemberRouteArgs(
           staffMember: staffMember,
           adminStaffBloc: adminStaffBloc,
           id: id,
           key: key,
         ),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'AdminEditStaffMemberRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminEditStaffMemberRouteArgs>();
      return _i5.AdminEditStaffMemberScreen(
        staffMember: args.staffMember,
        adminStaffBloc: args.adminStaffBloc,
        id: args.id,
        key: args.key,
      );
    },
  );
}

class AdminEditStaffMemberRouteArgs {
  const AdminEditStaffMemberRouteArgs({
    required this.staffMember,
    required this.adminStaffBloc,
    required this.id,
    this.key,
  });

  final _i24.StaffMember staffMember;

  final _i22.AdminStaffBloc adminStaffBloc;

  final String id;

  final _i20.Key? key;

  @override
  String toString() {
    return 'AdminEditStaffMemberRouteArgs{staffMember: $staffMember, adminStaffBloc: $adminStaffBloc, id: $id, key: $key}';
  }
}

/// generated route for
/// [_i6.AdminOrderScreen]
class AdminOrderRoute extends _i18.PageRouteInfo<AdminOrderRouteArgs> {
  AdminOrderRoute({
    required _i22.AdminStaffBloc adminStaffBloc,
    required _i21.AdminOrdersBloc adminOrdersBloc,
    required String orderId,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         AdminOrderRoute.name,
         args: AdminOrderRouteArgs(
           adminStaffBloc: adminStaffBloc,
           adminOrdersBloc: adminOrdersBloc,
           orderId: orderId,
           key: key,
         ),
         rawPathParams: {'id': orderId},
         initialChildren: children,
       );

  static const String name = 'AdminOrderRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminOrderRouteArgs>();
      return _i6.AdminOrderScreen(
        adminStaffBloc: args.adminStaffBloc,
        adminOrdersBloc: args.adminOrdersBloc,
        orderId: args.orderId,
        key: args.key,
      );
    },
  );
}

class AdminOrderRouteArgs {
  const AdminOrderRouteArgs({
    required this.adminStaffBloc,
    required this.adminOrdersBloc,
    required this.orderId,
    this.key,
  });

  final _i22.AdminStaffBloc adminStaffBloc;

  final _i21.AdminOrdersBloc adminOrdersBloc;

  final String orderId;

  final _i20.Key? key;

  @override
  String toString() {
    return 'AdminOrderRouteArgs{adminStaffBloc: $adminStaffBloc, adminOrdersBloc: $adminOrdersBloc, orderId: $orderId, key: $key}';
  }
}

/// generated route for
/// [_i7.AdminScreen]
class AdminRoute extends _i18.PageRouteInfo<void> {
  const AdminRoute({List<_i18.PageRouteInfo>? children})
    : super(AdminRoute.name, initialChildren: children);

  static const String name = 'AdminRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i7.AdminScreen();
    },
  );
}

/// generated route for
/// [_i8.BaseScreen]
class BaseRoute extends _i18.PageRouteInfo<void> {
  const BaseRoute({List<_i18.PageRouteInfo>? children})
    : super(BaseRoute.name, initialChildren: children);

  static const String name = 'BaseRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i8.BaseScreen();
    },
  );
}

/// generated route for
/// [_i9.BookRecordingDateScreen]
class BookRecordingDateRoute extends _i18.PageRouteInfo<void> {
  const BookRecordingDateRoute({List<_i18.PageRouteInfo>? children})
    : super(BookRecordingDateRoute.name, initialChildren: children);

  static const String name = 'BookRecordingDateRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i9.BookRecordingDateScreen();
    },
  );
}

/// generated route for
/// [_i10.BookRecordingScreen]
class BookRecordingRoute extends _i18.PageRouteInfo<BookRecordingRouteArgs> {
  BookRecordingRoute({
    required DateTime selectedTime,
    required _i25.BookingsBloc bookingsBloc,
    required Duration selectedDuration,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         BookRecordingRoute.name,
         args: BookRecordingRouteArgs(
           selectedTime: selectedTime,
           bookingsBloc: bookingsBloc,
           selectedDuration: selectedDuration,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'BookRecordingRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookRecordingRouteArgs>();
      return _i10.BookRecordingScreen(
        selectedTime: args.selectedTime,
        bookingsBloc: args.bookingsBloc,
        selectedDuration: args.selectedDuration,
        key: args.key,
      );
    },
  );
}

class BookRecordingRouteArgs {
  const BookRecordingRouteArgs({
    required this.selectedTime,
    required this.bookingsBloc,
    required this.selectedDuration,
    this.key,
  });

  final DateTime selectedTime;

  final _i25.BookingsBloc bookingsBloc;

  final Duration selectedDuration;

  final _i20.Key? key;

  @override
  String toString() {
    return 'BookRecordingRouteArgs{selectedTime: $selectedTime, bookingsBloc: $bookingsBloc, selectedDuration: $selectedDuration, key: $key}';
  }
}

/// generated route for
/// [_i11.BookRecordingTimeScreen]
class BookRecordingTimeRoute
    extends _i18.PageRouteInfo<BookRecordingTimeRouteArgs> {
  BookRecordingTimeRoute({
    required DateTime selectedDate,
    required _i25.BookingsBloc bookingsBloc,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         BookRecordingTimeRoute.name,
         args: BookRecordingTimeRouteArgs(
           selectedDate: selectedDate,
           bookingsBloc: bookingsBloc,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'BookRecordingTimeRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookRecordingTimeRouteArgs>();
      return _i11.BookRecordingTimeScreen(
        selectedDate: args.selectedDate,
        bookingsBloc: args.bookingsBloc,
        key: args.key,
      );
    },
  );
}

class BookRecordingTimeRouteArgs {
  const BookRecordingTimeRouteArgs({
    required this.selectedDate,
    required this.bookingsBloc,
    this.key,
  });

  final DateTime selectedDate;

  final _i25.BookingsBloc bookingsBloc;

  final _i20.Key? key;

  @override
  String toString() {
    return 'BookRecordingTimeRouteArgs{selectedDate: $selectedDate, bookingsBloc: $bookingsBloc, key: $key}';
  }
}

/// generated route for
/// [_i12.HomeScreen]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i12.HomeScreen();
    },
  );
}

/// generated route for
/// [_i13.ImagesViewerScreen]
class ImagesViewerRoute extends _i18.PageRouteInfo<ImagesViewerRouteArgs> {
  ImagesViewerRoute({
    required List<String> images,
    required int initialIndex,
    _i13.ImageSource source = _i13.ImageSource.network,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         ImagesViewerRoute.name,
         args: ImagesViewerRouteArgs(
           images: images,
           initialIndex: initialIndex,
           source: source,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'ImagesViewerRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ImagesViewerRouteArgs>();
      return _i13.ImagesViewerScreen(
        images: args.images,
        initialIndex: args.initialIndex,
        source: args.source,
        key: args.key,
      );
    },
  );
}

class ImagesViewerRouteArgs {
  const ImagesViewerRouteArgs({
    required this.images,
    required this.initialIndex,
    this.source = _i13.ImageSource.network,
    this.key,
  });

  final List<String> images;

  final int initialIndex;

  final _i13.ImageSource source;

  final _i20.Key? key;

  @override
  String toString() {
    return 'ImagesViewerRouteArgs{images: $images, initialIndex: $initialIndex, source: $source, key: $key}';
  }
}

/// generated route for
/// [_i14.LoyaltyScreen]
class LoyaltyRoute extends _i18.PageRouteInfo<void> {
  const LoyaltyRoute({List<_i18.PageRouteInfo>? children})
    : super(LoyaltyRoute.name, initialChildren: children);

  static const String name = 'LoyaltyRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i14.LoyaltyScreen();
    },
  );
}

/// generated route for
/// [_i15.MyOrderScreen]
class MyOrderRoute extends _i18.PageRouteInfo<MyOrderRouteArgs> {
  MyOrderRoute({
    required String orderId,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         MyOrderRoute.name,
         args: MyOrderRouteArgs(orderId: orderId, key: key),
         rawPathParams: {'id': orderId},
         initialChildren: children,
       );

  static const String name = 'MyOrderRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MyOrderRouteArgs>(
        orElse: () => MyOrderRouteArgs(orderId: pathParams.getString('id')),
      );
      return _i15.MyOrderScreen(orderId: args.orderId, key: args.key);
    },
  );
}

class MyOrderRouteArgs {
  const MyOrderRouteArgs({required this.orderId, this.key});

  final String orderId;

  final _i20.Key? key;

  @override
  String toString() {
    return 'MyOrderRouteArgs{orderId: $orderId, key: $key}';
  }
}

/// generated route for
/// [_i16.MyOrdersScreen]
class MyOrdersRoute extends _i18.PageRouteInfo<void> {
  const MyOrdersRoute({List<_i18.PageRouteInfo>? children})
    : super(MyOrdersRoute.name, initialChildren: children);

  static const String name = 'MyOrdersRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i16.MyOrdersScreen();
    },
  );
}

/// generated route for
/// [_i17.UnsupportedScreen]
class UnsupportedRoute extends _i18.PageRouteInfo<void> {
  const UnsupportedRoute({List<_i18.PageRouteInfo>? children})
    : super(UnsupportedRoute.name, initialChildren: children);

  static const String name = 'UnsupportedRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i17.UnsupportedScreen();
    },
  );
}
