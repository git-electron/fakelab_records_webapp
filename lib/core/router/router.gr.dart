// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart'
    as _i16;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart'
    as _i13;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/presentation/admin_order_screen.dart'
    as _i3;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart'
    as _i15;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/create_staff_member/presentation/admin_create_staff_member_screen.dart'
    as _i1;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/edit_staff_member/presentation/admin_edit_staff_member_screen.dart'
    as _i2;
import 'package:fakelab_records_webapp/presentation/screens/admin/presentation/admin_screen.dart'
    as _i4;
import 'package:fakelab_records_webapp/presentation/screens/base/base_screen.dart'
    as _i5;
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/home_screen.dart'
    as _i6;
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/presentation/images_viewer_screen.dart'
    as _i7;
import 'package:fakelab_records_webapp/presentation/screens/loyalty/loyalty_screen.dart'
    as _i8;
import 'package:fakelab_records_webapp/presentation/screens/my_order/presentation/my_order_screen.dart'
    as _i9;
import 'package:fakelab_records_webapp/presentation/screens/my_orders/presentation/my_orders_screen.dart'
    as _i10;
import 'package:fakelab_records_webapp/presentation/screens/unsupported/unsupported_screen.dart'
    as _i11;
import 'package:flutter/material.dart' as _i14;

/// generated route for
/// [_i1.AdminCreateStaffMemberScreen]
class AdminCreateStaffMemberRoute
    extends _i12.PageRouteInfo<AdminCreateStaffMemberRouteArgs> {
  AdminCreateStaffMemberRoute({
    required _i13.AdminStaffBloc adminStaffBloc,
    _i14.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         AdminCreateStaffMemberRoute.name,
         args: AdminCreateStaffMemberRouteArgs(
           adminStaffBloc: adminStaffBloc,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AdminCreateStaffMemberRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminCreateStaffMemberRouteArgs>();
      return _i1.AdminCreateStaffMemberScreen(
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

  final _i13.AdminStaffBloc adminStaffBloc;

  final _i14.Key? key;

  @override
  String toString() {
    return 'AdminCreateStaffMemberRouteArgs{adminStaffBloc: $adminStaffBloc, key: $key}';
  }
}

/// generated route for
/// [_i2.AdminEditStaffMemberScreen]
class AdminEditStaffMemberRoute
    extends _i12.PageRouteInfo<AdminEditStaffMemberRouteArgs> {
  AdminEditStaffMemberRoute({
    required String id,
    required _i15.StaffMember staffMember,
    required _i13.AdminStaffBloc adminStaffBloc,
    _i14.Key? key,
    List<_i12.PageRouteInfo>? children,
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

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminEditStaffMemberRouteArgs>();
      return _i2.AdminEditStaffMemberScreen(
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

  final _i15.StaffMember staffMember;

  final _i13.AdminStaffBloc adminStaffBloc;

  final _i14.Key? key;

  @override
  String toString() {
    return 'AdminEditStaffMemberRouteArgs{id: $id, staffMember: $staffMember, adminStaffBloc: $adminStaffBloc, key: $key}';
  }
}

/// generated route for
/// [_i3.AdminOrderScreen]
class AdminOrderRoute extends _i12.PageRouteInfo<AdminOrderRouteArgs> {
  AdminOrderRoute({
    required String orderId,
    required _i13.AdminStaffBloc adminStaffBloc,
    required _i16.AdminOrdersBloc adminOrdersBloc,
    _i14.Key? key,
    List<_i12.PageRouteInfo>? children,
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

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminOrderRouteArgs>();
      return _i3.AdminOrderScreen(
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

  final _i13.AdminStaffBloc adminStaffBloc;

  final _i16.AdminOrdersBloc adminOrdersBloc;

  final _i14.Key? key;

  @override
  String toString() {
    return 'AdminOrderRouteArgs{orderId: $orderId, adminStaffBloc: $adminStaffBloc, adminOrdersBloc: $adminOrdersBloc, key: $key}';
  }
}

/// generated route for
/// [_i4.AdminScreen]
class AdminRoute extends _i12.PageRouteInfo<void> {
  const AdminRoute({List<_i12.PageRouteInfo>? children})
    : super(AdminRoute.name, initialChildren: children);

  static const String name = 'AdminRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.AdminScreen();
    },
  );
}

/// generated route for
/// [_i5.BaseScreen]
class BaseRoute extends _i12.PageRouteInfo<void> {
  const BaseRoute({List<_i12.PageRouteInfo>? children})
    : super(BaseRoute.name, initialChildren: children);

  static const String name = 'BaseRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i5.BaseScreen();
    },
  );
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.HomeScreen();
    },
  );
}

/// generated route for
/// [_i7.ImagesViewerScreen]
class ImagesViewerRoute extends _i12.PageRouteInfo<ImagesViewerRouteArgs> {
  ImagesViewerRoute({
    required List<String> images,
    required int initialIndex,
    _i7.ImageSource source = _i7.ImageSource.network,
    _i14.Key? key,
    List<_i12.PageRouteInfo>? children,
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

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ImagesViewerRouteArgs>();
      return _i7.ImagesViewerScreen(
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
    this.source = _i7.ImageSource.network,
    this.key,
  });

  final List<String> images;

  final int initialIndex;

  final _i7.ImageSource source;

  final _i14.Key? key;

  @override
  String toString() {
    return 'ImagesViewerRouteArgs{images: $images, initialIndex: $initialIndex, source: $source, key: $key}';
  }
}

/// generated route for
/// [_i8.LoyaltyScreen]
class LoyaltyRoute extends _i12.PageRouteInfo<void> {
  const LoyaltyRoute({List<_i12.PageRouteInfo>? children})
    : super(LoyaltyRoute.name, initialChildren: children);

  static const String name = 'LoyaltyRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i8.LoyaltyScreen();
    },
  );
}

/// generated route for
/// [_i9.MyOrderScreen]
class MyOrderRoute extends _i12.PageRouteInfo<MyOrderRouteArgs> {
  MyOrderRoute({
    required String orderId,
    _i14.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         MyOrderRoute.name,
         args: MyOrderRouteArgs(orderId: orderId, key: key),
         rawPathParams: {'id': orderId},
         initialChildren: children,
       );

  static const String name = 'MyOrderRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MyOrderRouteArgs>(
        orElse: () => MyOrderRouteArgs(orderId: pathParams.getString('id')),
      );
      return _i9.MyOrderScreen(orderId: args.orderId, key: args.key);
    },
  );
}

class MyOrderRouteArgs {
  const MyOrderRouteArgs({required this.orderId, this.key});

  final String orderId;

  final _i14.Key? key;

  @override
  String toString() {
    return 'MyOrderRouteArgs{orderId: $orderId, key: $key}';
  }
}

/// generated route for
/// [_i10.MyOrdersScreen]
class MyOrdersRoute extends _i12.PageRouteInfo<void> {
  const MyOrdersRoute({List<_i12.PageRouteInfo>? children})
    : super(MyOrdersRoute.name, initialChildren: children);

  static const String name = 'MyOrdersRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.MyOrdersScreen();
    },
  );
}

/// generated route for
/// [_i11.UnsupportedScreen]
class UnsupportedRoute extends _i12.PageRouteInfo<void> {
  const UnsupportedRoute({List<_i12.PageRouteInfo>? children})
    : super(UnsupportedRoute.name, initialChildren: children);

  static const String name = 'UnsupportedRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.UnsupportedScreen();
    },
  );
}
