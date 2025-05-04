// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart'
    as _i18;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart'
    as _i15;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart'
    as _i20;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart'
    as _i17;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/create_client/presentation/admin_create_client_screen.dart'
    as _i1;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/edit_client/presentation/admin_edit_client_screen.dart'
    as _i3;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/presentation/admin_order_screen.dart'
    as _i5;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart'
    as _i19;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/create_staff_member/presentation/admin_create_staff_member_screen.dart'
    as _i2;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/edit_staff_member/presentation/admin_edit_staff_member_screen.dart'
    as _i4;
import 'package:fakelab_records_webapp/presentation/screens/admin/presentation/admin_screen.dart'
    as _i6;
import 'package:fakelab_records_webapp/presentation/screens/base/base_screen.dart'
    as _i7;
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/home_screen.dart'
    as _i8;
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/presentation/images_viewer_screen.dart'
    as _i9;
import 'package:fakelab_records_webapp/presentation/screens/loyalty/loyalty_screen.dart'
    as _i10;
import 'package:fakelab_records_webapp/presentation/screens/my_order/presentation/my_order_screen.dart'
    as _i11;
import 'package:fakelab_records_webapp/presentation/screens/my_orders/presentation/my_orders_screen.dart'
    as _i12;
import 'package:fakelab_records_webapp/presentation/screens/unsupported/unsupported_screen.dart'
    as _i13;
import 'package:flutter/material.dart' as _i16;

/// generated route for
/// [_i1.AdminCreateClientScreen]
class AdminCreateClientRoute
    extends _i14.PageRouteInfo<AdminCreateClientRouteArgs> {
  AdminCreateClientRoute({
    required _i15.AdminClientsBloc adminClientsBloc,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
         AdminCreateClientRoute.name,
         args: AdminCreateClientRouteArgs(
           adminClientsBloc: adminClientsBloc,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AdminCreateClientRoute';

  static _i14.PageInfo page = _i14.PageInfo(
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

  final _i15.AdminClientsBloc adminClientsBloc;

  final _i16.Key? key;

  @override
  String toString() {
    return 'AdminCreateClientRouteArgs{adminClientsBloc: $adminClientsBloc, key: $key}';
  }
}

/// generated route for
/// [_i2.AdminCreateStaffMemberScreen]
class AdminCreateStaffMemberRoute
    extends _i14.PageRouteInfo<AdminCreateStaffMemberRouteArgs> {
  AdminCreateStaffMemberRoute({
    required _i17.AdminStaffBloc adminStaffBloc,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
         AdminCreateStaffMemberRoute.name,
         args: AdminCreateStaffMemberRouteArgs(
           adminStaffBloc: adminStaffBloc,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AdminCreateStaffMemberRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminCreateStaffMemberRouteArgs>();
      return _i2.AdminCreateStaffMemberScreen(
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

  final _i17.AdminStaffBloc adminStaffBloc;

  final _i16.Key? key;

  @override
  String toString() {
    return 'AdminCreateStaffMemberRouteArgs{adminStaffBloc: $adminStaffBloc, key: $key}';
  }
}

/// generated route for
/// [_i3.AdminEditClientScreen]
class AdminEditClientRoute
    extends _i14.PageRouteInfo<AdminEditClientRouteArgs> {
  AdminEditClientRoute({
    required String id,
    required _i18.User client,
    required _i15.AdminClientsBloc adminClientsBloc,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
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

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminEditClientRouteArgs>();
      return _i3.AdminEditClientScreen(
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

  final _i18.User client;

  final _i15.AdminClientsBloc adminClientsBloc;

  final _i16.Key? key;

  @override
  String toString() {
    return 'AdminEditClientRouteArgs{id: $id, client: $client, adminClientsBloc: $adminClientsBloc, key: $key}';
  }
}

/// generated route for
/// [_i4.AdminEditStaffMemberScreen]
class AdminEditStaffMemberRoute
    extends _i14.PageRouteInfo<AdminEditStaffMemberRouteArgs> {
  AdminEditStaffMemberRoute({
    required String id,
    required _i19.StaffMember staffMember,
    required _i17.AdminStaffBloc adminStaffBloc,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
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

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminEditStaffMemberRouteArgs>();
      return _i4.AdminEditStaffMemberScreen(
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

  final _i19.StaffMember staffMember;

  final _i17.AdminStaffBloc adminStaffBloc;

  final _i16.Key? key;

  @override
  String toString() {
    return 'AdminEditStaffMemberRouteArgs{id: $id, staffMember: $staffMember, adminStaffBloc: $adminStaffBloc, key: $key}';
  }
}

/// generated route for
/// [_i5.AdminOrderScreen]
class AdminOrderRoute extends _i14.PageRouteInfo<AdminOrderRouteArgs> {
  AdminOrderRoute({
    required String orderId,
    required _i17.AdminStaffBloc adminStaffBloc,
    required _i20.AdminOrdersBloc adminOrdersBloc,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
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

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminOrderRouteArgs>();
      return _i5.AdminOrderScreen(
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

  final _i17.AdminStaffBloc adminStaffBloc;

  final _i20.AdminOrdersBloc adminOrdersBloc;

  final _i16.Key? key;

  @override
  String toString() {
    return 'AdminOrderRouteArgs{orderId: $orderId, adminStaffBloc: $adminStaffBloc, adminOrdersBloc: $adminOrdersBloc, key: $key}';
  }
}

/// generated route for
/// [_i6.AdminScreen]
class AdminRoute extends _i14.PageRouteInfo<void> {
  const AdminRoute({List<_i14.PageRouteInfo>? children})
    : super(AdminRoute.name, initialChildren: children);

  static const String name = 'AdminRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i6.AdminScreen();
    },
  );
}

/// generated route for
/// [_i7.BaseScreen]
class BaseRoute extends _i14.PageRouteInfo<void> {
  const BaseRoute({List<_i14.PageRouteInfo>? children})
    : super(BaseRoute.name, initialChildren: children);

  static const String name = 'BaseRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i7.BaseScreen();
    },
  );
}

/// generated route for
/// [_i8.HomeScreen]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i8.HomeScreen();
    },
  );
}

/// generated route for
/// [_i9.ImagesViewerScreen]
class ImagesViewerRoute extends _i14.PageRouteInfo<ImagesViewerRouteArgs> {
  ImagesViewerRoute({
    required List<String> images,
    required int initialIndex,
    _i9.ImageSource source = _i9.ImageSource.network,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
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

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ImagesViewerRouteArgs>();
      return _i9.ImagesViewerScreen(
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
    this.source = _i9.ImageSource.network,
    this.key,
  });

  final List<String> images;

  final int initialIndex;

  final _i9.ImageSource source;

  final _i16.Key? key;

  @override
  String toString() {
    return 'ImagesViewerRouteArgs{images: $images, initialIndex: $initialIndex, source: $source, key: $key}';
  }
}

/// generated route for
/// [_i10.LoyaltyScreen]
class LoyaltyRoute extends _i14.PageRouteInfo<void> {
  const LoyaltyRoute({List<_i14.PageRouteInfo>? children})
    : super(LoyaltyRoute.name, initialChildren: children);

  static const String name = 'LoyaltyRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i10.LoyaltyScreen();
    },
  );
}

/// generated route for
/// [_i11.MyOrderScreen]
class MyOrderRoute extends _i14.PageRouteInfo<MyOrderRouteArgs> {
  MyOrderRoute({
    required String orderId,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
         MyOrderRoute.name,
         args: MyOrderRouteArgs(orderId: orderId, key: key),
         rawPathParams: {'id': orderId},
         initialChildren: children,
       );

  static const String name = 'MyOrderRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MyOrderRouteArgs>(
        orElse: () => MyOrderRouteArgs(orderId: pathParams.getString('id')),
      );
      return _i11.MyOrderScreen(orderId: args.orderId, key: args.key);
    },
  );
}

class MyOrderRouteArgs {
  const MyOrderRouteArgs({required this.orderId, this.key});

  final String orderId;

  final _i16.Key? key;

  @override
  String toString() {
    return 'MyOrderRouteArgs{orderId: $orderId, key: $key}';
  }
}

/// generated route for
/// [_i12.MyOrdersScreen]
class MyOrdersRoute extends _i14.PageRouteInfo<void> {
  const MyOrdersRoute({List<_i14.PageRouteInfo>? children})
    : super(MyOrdersRoute.name, initialChildren: children);

  static const String name = 'MyOrdersRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i12.MyOrdersScreen();
    },
  );
}

/// generated route for
/// [_i13.UnsupportedScreen]
class UnsupportedRoute extends _i14.PageRouteInfo<void> {
  const UnsupportedRoute({List<_i14.PageRouteInfo>? children})
    : super(UnsupportedRoute.name, initialChildren: children);

  static const String name = 'UnsupportedRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i13.UnsupportedScreen();
    },
  );
}
