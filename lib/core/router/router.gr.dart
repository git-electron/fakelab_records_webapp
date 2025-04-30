// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/presentation/admin_order_screen.dart'
    as _i1;
import 'package:fakelab_records_webapp/presentation/screens/admin/presentation/admin_screen.dart'
    as _i2;
import 'package:fakelab_records_webapp/presentation/screens/base/base_screen.dart'
    as _i3;
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/home_screen.dart'
    as _i4;
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/presentation/images_viewer_screen.dart'
    as _i5;
import 'package:fakelab_records_webapp/presentation/screens/loyalty/loyalty_screen.dart'
    as _i6;
import 'package:fakelab_records_webapp/presentation/screens/my_order/presentation/my_order_screen.dart'
    as _i7;
import 'package:fakelab_records_webapp/presentation/screens/my_orders/presentation/my_orders_screen.dart'
    as _i8;
import 'package:fakelab_records_webapp/presentation/screens/unsupported/unsupported_screen.dart'
    as _i9;
import 'package:flutter/material.dart' as _i11;

/// generated route for
/// [_i1.AdminOrderScreen]
class AdminOrderRoute extends _i10.PageRouteInfo<AdminOrderRouteArgs> {
  AdminOrderRoute({
    required String orderId,
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         AdminOrderRoute.name,
         args: AdminOrderRouteArgs(orderId: orderId, key: key),
         rawPathParams: {'id': orderId},
         initialChildren: children,
       );

  static const String name = 'AdminOrderRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<AdminOrderRouteArgs>(
        orElse: () => AdminOrderRouteArgs(orderId: pathParams.getString('id')),
      );
      return _i1.AdminOrderScreen(orderId: args.orderId, key: args.key);
    },
  );
}

class AdminOrderRouteArgs {
  const AdminOrderRouteArgs({required this.orderId, this.key});

  final String orderId;

  final _i11.Key? key;

  @override
  String toString() {
    return 'AdminOrderRouteArgs{orderId: $orderId, key: $key}';
  }
}

/// generated route for
/// [_i2.AdminScreen]
class AdminRoute extends _i10.PageRouteInfo<void> {
  const AdminRoute({List<_i10.PageRouteInfo>? children})
    : super(AdminRoute.name, initialChildren: children);

  static const String name = 'AdminRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.AdminScreen();
    },
  );
}

/// generated route for
/// [_i3.BaseScreen]
class BaseRoute extends _i10.PageRouteInfo<void> {
  const BaseRoute({List<_i10.PageRouteInfo>? children})
    : super(BaseRoute.name, initialChildren: children);

  static const String name = 'BaseRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.BaseScreen();
    },
  );
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.ImagesViewerScreen]
class ImagesViewerRoute extends _i10.PageRouteInfo<ImagesViewerRouteArgs> {
  ImagesViewerRoute({
    required List<String> images,
    required int initialIndex,
    _i5.ImageSource source = _i5.ImageSource.network,
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
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

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ImagesViewerRouteArgs>();
      return _i5.ImagesViewerScreen(
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
    this.source = _i5.ImageSource.network,
    this.key,
  });

  final List<String> images;

  final int initialIndex;

  final _i5.ImageSource source;

  final _i11.Key? key;

  @override
  String toString() {
    return 'ImagesViewerRouteArgs{images: $images, initialIndex: $initialIndex, source: $source, key: $key}';
  }
}

/// generated route for
/// [_i6.LoyaltyScreen]
class LoyaltyRoute extends _i10.PageRouteInfo<void> {
  const LoyaltyRoute({List<_i10.PageRouteInfo>? children})
    : super(LoyaltyRoute.name, initialChildren: children);

  static const String name = 'LoyaltyRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.LoyaltyScreen();
    },
  );
}

/// generated route for
/// [_i7.MyOrderScreen]
class MyOrderRoute extends _i10.PageRouteInfo<MyOrderRouteArgs> {
  MyOrderRoute({
    required String orderId,
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         MyOrderRoute.name,
         args: MyOrderRouteArgs(orderId: orderId, key: key),
         rawPathParams: {'id': orderId},
         initialChildren: children,
       );

  static const String name = 'MyOrderRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MyOrderRouteArgs>(
        orElse: () => MyOrderRouteArgs(orderId: pathParams.getString('id')),
      );
      return _i7.MyOrderScreen(orderId: args.orderId, key: args.key);
    },
  );
}

class MyOrderRouteArgs {
  const MyOrderRouteArgs({required this.orderId, this.key});

  final String orderId;

  final _i11.Key? key;

  @override
  String toString() {
    return 'MyOrderRouteArgs{orderId: $orderId, key: $key}';
  }
}

/// generated route for
/// [_i8.MyOrdersScreen]
class MyOrdersRoute extends _i10.PageRouteInfo<void> {
  const MyOrdersRoute({List<_i10.PageRouteInfo>? children})
    : super(MyOrdersRoute.name, initialChildren: children);

  static const String name = 'MyOrdersRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.MyOrdersScreen();
    },
  );
}

/// generated route for
/// [_i9.UnsupportedScreen]
class UnsupportedRoute extends _i10.PageRouteInfo<void> {
  const UnsupportedRoute({List<_i10.PageRouteInfo>? children})
    : super(UnsupportedRoute.name, initialChildren: children);

  static const String name = 'UnsupportedRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.UnsupportedScreen();
    },
  );
}
