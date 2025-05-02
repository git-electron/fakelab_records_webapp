// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart'
    as _i12;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/create_staff_member/presentation/admin_create_staff_member_screen.dart'
    as _i1;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/presentation/admin_order_screen.dart'
    as _i2;
import 'package:fakelab_records_webapp/presentation/screens/admin/presentation/admin_screen.dart'
    as _i3;
import 'package:fakelab_records_webapp/presentation/screens/base/base_screen.dart'
    as _i4;
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/home_screen.dart'
    as _i5;
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/presentation/images_viewer_screen.dart'
    as _i6;
import 'package:fakelab_records_webapp/presentation/screens/loyalty/loyalty_screen.dart'
    as _i7;
import 'package:fakelab_records_webapp/presentation/screens/my_order/presentation/my_order_screen.dart'
    as _i8;
import 'package:fakelab_records_webapp/presentation/screens/my_orders/presentation/my_orders_screen.dart'
    as _i9;
import 'package:fakelab_records_webapp/presentation/screens/unsupported/unsupported_screen.dart'
    as _i10;
import 'package:flutter/material.dart' as _i13;

/// generated route for
/// [_i1.AdminCreateStaffMemberScreen]
class AdminCreateStaffMemberRoute extends _i11.PageRouteInfo<void> {
  const AdminCreateStaffMemberRoute({List<_i11.PageRouteInfo>? children})
    : super(AdminCreateStaffMemberRoute.name, initialChildren: children);

  static const String name = 'AdminCreateStaffMemberRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i1.AdminCreateStaffMemberScreen();
    },
  );
}

/// generated route for
/// [_i2.AdminOrderScreen]
class AdminOrderRoute extends _i11.PageRouteInfo<AdminOrderRouteArgs> {
  AdminOrderRoute({
    required String orderId,
    required _i12.AdminOrdersBloc adminOrdersBloc,
    _i13.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         AdminOrderRoute.name,
         args: AdminOrderRouteArgs(
           orderId: orderId,
           adminOrdersBloc: adminOrdersBloc,
           key: key,
         ),
         rawPathParams: {'id': orderId},
         initialChildren: children,
       );

  static const String name = 'AdminOrderRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminOrderRouteArgs>();
      return _i2.AdminOrderScreen(
        orderId: args.orderId,
        adminOrdersBloc: args.adminOrdersBloc,
        key: args.key,
      );
    },
  );
}

class AdminOrderRouteArgs {
  const AdminOrderRouteArgs({
    required this.orderId,
    required this.adminOrdersBloc,
    this.key,
  });

  final String orderId;

  final _i12.AdminOrdersBloc adminOrdersBloc;

  final _i13.Key? key;

  @override
  String toString() {
    return 'AdminOrderRouteArgs{orderId: $orderId, adminOrdersBloc: $adminOrdersBloc, key: $key}';
  }
}

/// generated route for
/// [_i3.AdminScreen]
class AdminRoute extends _i11.PageRouteInfo<void> {
  const AdminRoute({List<_i11.PageRouteInfo>? children})
    : super(AdminRoute.name, initialChildren: children);

  static const String name = 'AdminRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.AdminScreen();
    },
  );
}

/// generated route for
/// [_i4.BaseScreen]
class BaseRoute extends _i11.PageRouteInfo<void> {
  const BaseRoute({List<_i11.PageRouteInfo>? children})
    : super(BaseRoute.name, initialChildren: children);

  static const String name = 'BaseRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.BaseScreen();
    },
  );
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.ImagesViewerScreen]
class ImagesViewerRoute extends _i11.PageRouteInfo<ImagesViewerRouteArgs> {
  ImagesViewerRoute({
    required List<String> images,
    required int initialIndex,
    _i6.ImageSource source = _i6.ImageSource.network,
    _i13.Key? key,
    List<_i11.PageRouteInfo>? children,
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

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ImagesViewerRouteArgs>();
      return _i6.ImagesViewerScreen(
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
    this.source = _i6.ImageSource.network,
    this.key,
  });

  final List<String> images;

  final int initialIndex;

  final _i6.ImageSource source;

  final _i13.Key? key;

  @override
  String toString() {
    return 'ImagesViewerRouteArgs{images: $images, initialIndex: $initialIndex, source: $source, key: $key}';
  }
}

/// generated route for
/// [_i7.LoyaltyScreen]
class LoyaltyRoute extends _i11.PageRouteInfo<void> {
  const LoyaltyRoute({List<_i11.PageRouteInfo>? children})
    : super(LoyaltyRoute.name, initialChildren: children);

  static const String name = 'LoyaltyRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i7.LoyaltyScreen();
    },
  );
}

/// generated route for
/// [_i8.MyOrderScreen]
class MyOrderRoute extends _i11.PageRouteInfo<MyOrderRouteArgs> {
  MyOrderRoute({
    required String orderId,
    _i13.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         MyOrderRoute.name,
         args: MyOrderRouteArgs(orderId: orderId, key: key),
         rawPathParams: {'id': orderId},
         initialChildren: children,
       );

  static const String name = 'MyOrderRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MyOrderRouteArgs>(
        orElse: () => MyOrderRouteArgs(orderId: pathParams.getString('id')),
      );
      return _i8.MyOrderScreen(orderId: args.orderId, key: args.key);
    },
  );
}

class MyOrderRouteArgs {
  const MyOrderRouteArgs({required this.orderId, this.key});

  final String orderId;

  final _i13.Key? key;

  @override
  String toString() {
    return 'MyOrderRouteArgs{orderId: $orderId, key: $key}';
  }
}

/// generated route for
/// [_i9.MyOrdersScreen]
class MyOrdersRoute extends _i11.PageRouteInfo<void> {
  const MyOrdersRoute({List<_i11.PageRouteInfo>? children})
    : super(MyOrdersRoute.name, initialChildren: children);

  static const String name = 'MyOrdersRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.MyOrdersScreen();
    },
  );
}

/// generated route for
/// [_i10.UnsupportedScreen]
class UnsupportedRoute extends _i11.PageRouteInfo<void> {
  const UnsupportedRoute({List<_i11.PageRouteInfo>? children})
    : super(UnsupportedRoute.name, initialChildren: children);

  static const String name = 'UnsupportedRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.UnsupportedScreen();
    },
  );
}
