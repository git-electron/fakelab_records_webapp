// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/home_screen.dart'
    as _i1;
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/presentation/images_viewer_screen.dart'
    as _i2;
import 'package:fakelab_records_webapp/presentation/screens/unknown_source/unknown_source_screen.dart'
    as _i3;
import 'package:flutter/material.dart' as _i5;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.ImagesViewerScreen]
class ImagesViewerRoute extends _i4.PageRouteInfo<ImagesViewerRouteArgs> {
  ImagesViewerRoute({
    required List<String> images,
    required int initialIndex,
    _i2.ImageSource source = _i2.ImageSource.network,
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
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

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ImagesViewerRouteArgs>();
      return _i2.ImagesViewerScreen(
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
    this.source = _i2.ImageSource.network,
    this.key,
  });

  final List<String> images;

  final int initialIndex;

  final _i2.ImageSource source;

  final _i5.Key? key;

  @override
  String toString() {
    return 'ImagesViewerRouteArgs{images: $images, initialIndex: $initialIndex, source: $source, key: $key}';
  }
}

/// generated route for
/// [_i3.UnknownSourceScreen]
class UnknownSourceRoute extends _i4.PageRouteInfo<void> {
  const UnknownSourceRoute({List<_i4.PageRouteInfo>? children})
    : super(UnknownSourceRoute.name, initialChildren: children);

  static const String name = 'UnknownSourceRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.UnknownSourceScreen();
    },
  );
}
