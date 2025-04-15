// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/home_screen.dart'
    deferred as _i1;
import 'package:fakelab_records_webapp/presentation/screens/unknown_source/unknown_source_screen.dart'
    deferred as _i2;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return _i3.DeferredWidget(_i1.loadLibrary, () => _i1.HomeScreen());
    },
  );
}

/// generated route for
/// [_i2.UnknownSourceScreen]
class UnknownSourceRoute extends _i3.PageRouteInfo<void> {
  const UnknownSourceRoute({List<_i3.PageRouteInfo>? children})
    : super(UnknownSourceRoute.name, initialChildren: children);

  static const String name = 'UnknownSourceRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return _i3.DeferredWidget(
        _i2.loadLibrary,
        () => _i2.UnknownSourceScreen(),
      );
    },
  );
}
