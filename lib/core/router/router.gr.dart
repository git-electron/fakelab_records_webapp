// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart'
    as _i21;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart'
    as _i17;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart'
    as _i19;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart'
    as _i20;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/create_client/presentation/admin_create_client_screen.dart'
    as _i1;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/edit_client/presentation/admin_edit_client_screen.dart'
    as _i4;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/create_order/presentation/admin_create_order_screen.dart'
    as _i2;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/order/presentation/admin_order_screen.dart'
    as _i6;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart'
    as _i22;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/create_staff_member/presentation/admin_create_staff_member_screen.dart'
    as _i3;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/edit_staff_member/presentation/admin_edit_staff_member_screen.dart'
    as _i5;
import 'package:fakelab_records_webapp/presentation/screens/admin/presentation/admin_screen.dart'
    as _i7;
import 'package:fakelab_records_webapp/presentation/screens/base/base_screen.dart'
    as _i8;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/presentation/book_recording_screen.dart'
    as _i9;
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/home_screen.dart'
    as _i10;
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/presentation/images_viewer_screen.dart'
    as _i11;
import 'package:fakelab_records_webapp/presentation/screens/loyalty/loyalty_screen.dart'
    as _i12;
import 'package:fakelab_records_webapp/presentation/screens/my_order/presentation/my_order_screen.dart'
    as _i13;
import 'package:fakelab_records_webapp/presentation/screens/my_orders/presentation/my_orders_screen.dart'
    as _i14;
import 'package:fakelab_records_webapp/presentation/screens/unsupported/unsupported_screen.dart'
    as _i15;
import 'package:flutter/material.dart' as _i18;

/// generated route for
/// [_i1.AdminCreateClientScreen]
class AdminCreateClientRoute
    extends _i16.PageRouteInfo<AdminCreateClientRouteArgs> {
  AdminCreateClientRoute({
    required _i17.AdminClientsBloc adminClientsBloc,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         AdminCreateClientRoute.name,
         args: AdminCreateClientRouteArgs(
           adminClientsBloc: adminClientsBloc,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AdminCreateClientRoute';

  static _i16.PageInfo page = _i16.PageInfo(
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

  final _i17.AdminClientsBloc adminClientsBloc;

  final _i18.Key? key;

  @override
  String toString() {
    return 'AdminCreateClientRouteArgs{adminClientsBloc: $adminClientsBloc, key: $key}';
  }
}

/// generated route for
/// [_i2.AdminCreateOrderScreen]
class AdminCreateOrderRoute
    extends _i16.PageRouteInfo<AdminCreateOrderRouteArgs> {
  AdminCreateOrderRoute({
    required _i19.AdminOrdersBloc adminOrdersBloc,
    required _i17.AdminClientsBloc adminClientsBloc,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
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

  static _i16.PageInfo page = _i16.PageInfo(
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

  final _i19.AdminOrdersBloc adminOrdersBloc;

  final _i17.AdminClientsBloc adminClientsBloc;

  final _i18.Key? key;

  @override
  String toString() {
    return 'AdminCreateOrderRouteArgs{adminOrdersBloc: $adminOrdersBloc, adminClientsBloc: $adminClientsBloc, key: $key}';
  }
}

/// generated route for
/// [_i3.AdminCreateStaffMemberScreen]
class AdminCreateStaffMemberRoute
    extends _i16.PageRouteInfo<AdminCreateStaffMemberRouteArgs> {
  AdminCreateStaffMemberRoute({
    required _i20.AdminStaffBloc adminStaffBloc,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         AdminCreateStaffMemberRoute.name,
         args: AdminCreateStaffMemberRouteArgs(
           adminStaffBloc: adminStaffBloc,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AdminCreateStaffMemberRoute';

  static _i16.PageInfo page = _i16.PageInfo(
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

  final _i20.AdminStaffBloc adminStaffBloc;

  final _i18.Key? key;

  @override
  String toString() {
    return 'AdminCreateStaffMemberRouteArgs{adminStaffBloc: $adminStaffBloc, key: $key}';
  }
}

/// generated route for
/// [_i4.AdminEditClientScreen]
class AdminEditClientRoute
    extends _i16.PageRouteInfo<AdminEditClientRouteArgs> {
  AdminEditClientRoute({
    required String id,
    required _i21.User client,
    required _i17.AdminClientsBloc adminClientsBloc,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         AdminEditClientRoute.name,
         args: AdminEditClientRouteArgs(
           id: id,
           client: client,
           adminClientsBloc: adminClientsBloc,
           key: key,
         ),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'AdminEditClientRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminEditClientRouteArgs>();
      return _i4.AdminEditClientScreen(
        id: args.id,
        client: args.client,
        adminClientsBloc: args.adminClientsBloc,
        key: args.key,
      );
    },
  );
}

class AdminEditClientRouteArgs {
  const AdminEditClientRouteArgs({
    required this.id,
    required this.client,
    required this.adminClientsBloc,
    this.key,
  });

  final String id;

  final _i21.User client;

  final _i17.AdminClientsBloc adminClientsBloc;

  final _i18.Key? key;

  @override
  String toString() {
    return 'AdminEditClientRouteArgs{id: $id, client: $client, adminClientsBloc: $adminClientsBloc, key: $key}';
  }
}

/// generated route for
/// [_i5.AdminEditStaffMemberScreen]
class AdminEditStaffMemberRoute
    extends _i16.PageRouteInfo<AdminEditStaffMemberRouteArgs> {
  AdminEditStaffMemberRoute({
    required String id,
    required _i22.StaffMember staffMember,
    required _i20.AdminStaffBloc adminStaffBloc,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         AdminEditStaffMemberRoute.name,
         args: AdminEditStaffMemberRouteArgs(
           id: id,
           staffMember: staffMember,
           adminStaffBloc: adminStaffBloc,
           key: key,
         ),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'AdminEditStaffMemberRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminEditStaffMemberRouteArgs>();
      return _i5.AdminEditStaffMemberScreen(
        id: args.id,
        staffMember: args.staffMember,
        adminStaffBloc: args.adminStaffBloc,
        key: args.key,
      );
    },
  );
}

class AdminEditStaffMemberRouteArgs {
  const AdminEditStaffMemberRouteArgs({
    required this.id,
    required this.staffMember,
    required this.adminStaffBloc,
    this.key,
  });

  final String id;

  final _i22.StaffMember staffMember;

  final _i20.AdminStaffBloc adminStaffBloc;

  final _i18.Key? key;

  @override
  String toString() {
    return 'AdminEditStaffMemberRouteArgs{id: $id, staffMember: $staffMember, adminStaffBloc: $adminStaffBloc, key: $key}';
  }
}

/// generated route for
/// [_i6.AdminOrderScreen]
class AdminOrderRoute extends _i16.PageRouteInfo<AdminOrderRouteArgs> {
  AdminOrderRoute({
    required String orderId,
    required _i20.AdminStaffBloc adminStaffBloc,
    required _i19.AdminOrdersBloc adminOrdersBloc,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         AdminOrderRoute.name,
         args: AdminOrderRouteArgs(
           orderId: orderId,
           adminStaffBloc: adminStaffBloc,
           adminOrdersBloc: adminOrdersBloc,
           key: key,
         ),
         rawPathParams: {'id': orderId},
         initialChildren: children,
       );

  static const String name = 'AdminOrderRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminOrderRouteArgs>();
      return _i6.AdminOrderScreen(
        orderId: args.orderId,
        adminStaffBloc: args.adminStaffBloc,
        adminOrdersBloc: args.adminOrdersBloc,
        key: args.key,
      );
    },
  );
}

class AdminOrderRouteArgs {
  const AdminOrderRouteArgs({
    required this.orderId,
    required this.adminStaffBloc,
    required this.adminOrdersBloc,
    this.key,
  });

  final String orderId;

  final _i20.AdminStaffBloc adminStaffBloc;

  final _i19.AdminOrdersBloc adminOrdersBloc;

  final _i18.Key? key;

  @override
  String toString() {
    return 'AdminOrderRouteArgs{orderId: $orderId, adminStaffBloc: $adminStaffBloc, adminOrdersBloc: $adminOrdersBloc, key: $key}';
  }
}

/// generated route for
/// [_i7.AdminScreen]
class AdminRoute extends _i16.PageRouteInfo<void> {
  const AdminRoute({List<_i16.PageRouteInfo>? children})
    : super(AdminRoute.name, initialChildren: children);

  static const String name = 'AdminRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i7.AdminScreen();
    },
  );
}

/// generated route for
/// [_i8.BaseScreen]
class BaseRoute extends _i16.PageRouteInfo<void> {
  const BaseRoute({List<_i16.PageRouteInfo>? children})
    : super(BaseRoute.name, initialChildren: children);

  static const String name = 'BaseRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i8.BaseScreen();
    },
  );
}

/// generated route for
/// [_i9.BookRecordingScreen]
class BookRecordingRoute extends _i16.PageRouteInfo<void> {
  const BookRecordingRoute({List<_i16.PageRouteInfo>? children})
    : super(BookRecordingRoute.name, initialChildren: children);

  static const String name = 'BookRecordingRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i9.BookRecordingScreen();
    },
  );
}

/// generated route for
/// [_i10.HomeScreen]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i10.HomeScreen();
    },
  );
}

/// generated route for
/// [_i11.ImagesViewerScreen]
class ImagesViewerRoute extends _i16.PageRouteInfo<ImagesViewerRouteArgs> {
  ImagesViewerRoute({
    required List<String> images,
    required int initialIndex,
    _i11.ImageSource source = _i11.ImageSource.network,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
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

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ImagesViewerRouteArgs>();
      return _i11.ImagesViewerScreen(
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
    this.source = _i11.ImageSource.network,
    this.key,
  });

  final List<String> images;

  final int initialIndex;

  final _i11.ImageSource source;

  final _i18.Key? key;

  @override
  String toString() {
    return 'ImagesViewerRouteArgs{images: $images, initialIndex: $initialIndex, source: $source, key: $key}';
  }
}

/// generated route for
/// [_i12.LoyaltyScreen]
class LoyaltyRoute extends _i16.PageRouteInfo<void> {
  const LoyaltyRoute({List<_i16.PageRouteInfo>? children})
    : super(LoyaltyRoute.name, initialChildren: children);

  static const String name = 'LoyaltyRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i12.LoyaltyScreen();
    },
  );
}

/// generated route for
/// [_i13.MyOrderScreen]
class MyOrderRoute extends _i16.PageRouteInfo<MyOrderRouteArgs> {
  MyOrderRoute({
    required String orderId,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         MyOrderRoute.name,
         args: MyOrderRouteArgs(orderId: orderId, key: key),
         rawPathParams: {'id': orderId},
         initialChildren: children,
       );

  static const String name = 'MyOrderRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MyOrderRouteArgs>(
        orElse: () => MyOrderRouteArgs(orderId: pathParams.getString('id')),
      );
      return _i13.MyOrderScreen(orderId: args.orderId, key: args.key);
    },
  );
}

class MyOrderRouteArgs {
  const MyOrderRouteArgs({required this.orderId, this.key});

  final String orderId;

  final _i18.Key? key;

  @override
  String toString() {
    return 'MyOrderRouteArgs{orderId: $orderId, key: $key}';
  }
}

/// generated route for
/// [_i14.MyOrdersScreen]
class MyOrdersRoute extends _i16.PageRouteInfo<void> {
  const MyOrdersRoute({List<_i16.PageRouteInfo>? children})
    : super(MyOrdersRoute.name, initialChildren: children);

  static const String name = 'MyOrdersRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i14.MyOrdersScreen();
    },
  );
}

/// generated route for
/// [_i15.UnsupportedScreen]
class UnsupportedRoute extends _i16.PageRouteInfo<void> {
  const UnsupportedRoute({List<_i16.PageRouteInfo>? children})
    : super(UnsupportedRoute.name, initialChildren: children);

  static const String name = 'UnsupportedRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i15.UnsupportedScreen();
    },
  );
}
