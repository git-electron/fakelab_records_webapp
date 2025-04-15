/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_right.svg
  SvgGenImage get arrowRight =>
      const SvgGenImage('assets/icons/arrow_right.svg');

  /// Directory path: assets/icons/logo
  $AssetsIconsLogoGen get logo => const $AssetsIconsLogoGen();

  /// List of all assets
  List<SvgGenImage> get values => [arrowRight];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/coin
  $AssetsImagesCoinGen get coin => const $AssetsImagesCoinGen();
}

class $AssetsIconsLogoGen {
  const $AssetsIconsLogoGen();

  /// Directory path: assets/icons/logo/fakelab
  $AssetsIconsLogoFakelabGen get fakelab => const $AssetsIconsLogoFakelabGen();

  /// Directory path: assets/icons/logo/records
  $AssetsIconsLogoRecordsGen get records => const $AssetsIconsLogoRecordsGen();
}

class $AssetsImagesCoinGen {
  const $AssetsImagesCoinGen();

  /// File path: assets/images/coin/big.png
  AssetGenImage get big => const AssetGenImage('assets/images/coin/big.png');

  /// File path: assets/images/coin/small.png
  AssetGenImage get small =>
      const AssetGenImage('assets/images/coin/small.png');

  /// List of all assets
  List<AssetGenImage> get values => [big, small];
}

class $AssetsIconsLogoFakelabGen {
  const $AssetsIconsLogoFakelabGen();

  /// File path: assets/icons/logo/fakelab/compact.svg
  SvgGenImage get compact =>
      const SvgGenImage('assets/icons/logo/fakelab/compact.svg');

  /// File path: assets/icons/logo/fakelab/full.svg
  SvgGenImage get full =>
      const SvgGenImage('assets/icons/logo/fakelab/full.svg');

  /// List of all assets
  List<SvgGenImage> get values => [compact, full];
}

class $AssetsIconsLogoRecordsGen {
  const $AssetsIconsLogoRecordsGen();

  /// File path: assets/icons/logo/records/compact.svg
  SvgGenImage get compact =>
      const SvgGenImage('assets/icons/logo/records/compact.svg');

  /// File path: assets/icons/logo/records/full.svg
  SvgGenImage get full =>
      const SvgGenImage('assets/icons/logo/records/full.svg');

  /// List of all assets
  List<SvgGenImage> get values => [compact, full];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
