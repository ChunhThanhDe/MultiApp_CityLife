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

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/light_mode.xml
  String get lightMode => 'assets/colors/light_mode.xml';

  /// List of all assets
  List<String> get values => [lightMode];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_back_arrow.svg
  SvgGenImage get icBackArrow => const SvgGenImage('assets/icons/ic_back_arrow.svg');

  /// File path: assets/icons/ic_cart_filled.svg
  SvgGenImage get icCartFilled => const SvgGenImage('assets/icons/ic_cart_filled.svg');

  /// File path: assets/icons/ic_cart_outlined.svg
  SvgGenImage get icCartOutlined => const SvgGenImage('assets/icons/ic_cart_outlined.svg');

  /// File path: assets/icons/ic_clock.svg
  SvgGenImage get icClock => const SvgGenImage('assets/icons/ic_clock.svg');

  /// File path: assets/icons/ic_close.svg
  SvgGenImage get icClose => const SvgGenImage('assets/icons/ic_close.svg');

  /// File path: assets/icons/ic_dropdown_arrow.svg
  SvgGenImage get icDropdownArrow => const SvgGenImage('assets/icons/ic_dropdown_arrow.svg');

  /// File path: assets/icons/ic_email_icon.svg
  SvgGenImage get icEmailIcon => const SvgGenImage('assets/icons/ic_email_icon.svg');

  /// File path: assets/icons/ic_home_filled.svg
  SvgGenImage get icHomeFilled => const SvgGenImage('assets/icons/ic_home_filled.svg');

  /// File path: assets/icons/ic_home_outlined.svg
  SvgGenImage get icHomeOutlined => const SvgGenImage('assets/icons/ic_home_outlined.svg');

  /// File path: assets/icons/ic_location.svg
  SvgGenImage get icLocation => const SvgGenImage('assets/icons/ic_location.svg');

  /// File path: assets/icons/ic_mouse.svg
  SvgGenImage get icMouse => const SvgGenImage('assets/icons/ic_mouse.svg');

  /// File path: assets/icons/ic_person_filled.svg
  SvgGenImage get icPersonFilled => const SvgGenImage('assets/icons/ic_person_filled.svg');

  /// File path: assets/icons/ic_person_icon.svg
  SvgGenImage get icPersonIcon => const SvgGenImage('assets/icons/ic_person_icon.svg');

  /// File path: assets/icons/ic_person_outlined.svg
  SvgGenImage get icPersonOutlined => const SvgGenImage('assets/icons/ic_person_outlined.svg');

  /// File path: assets/icons/ic_phone_icon.svg
  SvgGenImage get icPhoneIcon => const SvgGenImage('assets/icons/ic_phone_icon.svg');

  /// File path: assets/icons/ic_right_arrow.svg
  SvgGenImage get icRightArrow => const SvgGenImage('assets/icons/ic_right_arrow.svg');

  /// File path: assets/icons/ic_right_arrow_chevrolet.svg
  SvgGenImage get icRightArrowChevrolet => const SvgGenImage('assets/icons/ic_right_arrow_chevrolet.svg');

  /// File path: assets/icons/ic_search.svg
  SvgGenImage get icSearch => const SvgGenImage('assets/icons/ic_search.svg');

  /// File path: assets/icons/ic_service_filled.svg
  SvgGenImage get icServiceFilled => const SvgGenImage('assets/icons/ic_service_filled.svg');

  /// File path: assets/icons/ic_service_outlined.svg
  SvgGenImage get icServiceOutlined => const SvgGenImage('assets/icons/ic_service_outlined.svg');

  /// File path: assets/icons/ic_wallet_filled.svg
  SvgGenImage get icWalletFilled => const SvgGenImage('assets/icons/ic_wallet_filled.svg');

  /// File path: assets/icons/ic_wallet_outlined.svg
  SvgGenImage get icWalletOutlined => const SvgGenImage('assets/icons/ic_wallet_outlined.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    icBackArrow,
    icCartFilled,
    icCartOutlined,
    icClock,
    icClose,
    icDropdownArrow,
    icEmailIcon,
    icHomeFilled,
    icHomeOutlined,
    icLocation,
    icMouse,
    icPersonFilled,
    icPersonIcon,
    icPersonOutlined,
    icPhoneIcon,
    icRightArrow,
    icRightArrowChevrolet,
    icSearch,
    icServiceFilled,
    icServiceOutlined,
    icWalletFilled,
    icWalletOutlined,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img_address.png
  AssetGenImage get imgAddress => const AssetGenImage('assets/images/img_address.png');

  /// File path: assets/images/img_new.png
  AssetGenImage get imgNew => const AssetGenImage('assets/images/img_new.png');

  /// List of all assets
  List<AssetGenImage> get values => [imgAddress, imgNew];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// File path: assets/translations/vi.json
  String get vi => 'assets/translations/vi.json';

  /// List of all assets
  List<String> get values => [en, vi];
}

class Assets {
  const Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
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
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = true;

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
      loader = _vg.AssetBytesLoader(_assetName, assetBundle: bundle, packageName: package);
    } else {
      loader = _svg.SvgAssetLoader(_assetName, assetBundle: bundle, packageName: package, theme: theme);
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
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
