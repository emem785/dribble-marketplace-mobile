/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class $AssetsJpgGen {
  const $AssetsJpgGen();

  /// File path: assets/jpg/makeup.png
  AssetGenImage get makeup => const AssetGenImage('assets/jpg/makeup.png');

  /// File path: assets/jpg/sweaters.png
  AssetGenImage get sweaters => const AssetGenImage('assets/jpg/sweaters.png');

  /// List of all assets
  List<AssetGenImage> get values => [makeup, sweaters];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/arrow_left.svg
  SvgGenImage get arrowLeft => const SvgGenImage('assets/svg/arrow_left.svg');

  /// File path: assets/svg/bill.svg
  SvgGenImage get bill => const SvgGenImage('assets/svg/bill.svg');

  /// File path: assets/svg/cart.svg
  SvgGenImage get cart => const SvgGenImage('assets/svg/cart.svg');

  /// File path: assets/svg/category.svg
  SvgGenImage get category => const SvgGenImage('assets/svg/category.svg');

  /// File path: assets/svg/data_plan.svg
  SvgGenImage get dataPlan => const SvgGenImage('assets/svg/data_plan.svg');

  /// File path: assets/svg/favourite.svg
  SvgGenImage get favourite => const SvgGenImage('assets/svg/favourite.svg');

  /// File path: assets/svg/favourite_solid.svg
  SvgGenImage get favouriteSolid =>
      const SvgGenImage('assets/svg/favourite_solid.svg');

  /// File path: assets/svg/flight.svg
  SvgGenImage get flight => const SvgGenImage('assets/svg/flight.svg');

  /// File path: assets/svg/home.svg
  SvgGenImage get home => const SvgGenImage('assets/svg/home.svg');

  /// File path: assets/svg/home_solid.svg
  SvgGenImage get homeSolid => const SvgGenImage('assets/svg/home_solid.svg');

  /// File path: assets/svg/like.svg
  SvgGenImage get like => const SvgGenImage('assets/svg/like.svg');

  /// File path: assets/svg/like_solid.svg
  SvgGenImage get likeSolid => const SvgGenImage('assets/svg/like_solid.svg');

  /// File path: assets/svg/notifications.svg
  SvgGenImage get notifications =>
      const SvgGenImage('assets/svg/notifications.svg');

  /// File path: assets/svg/search.svg
  SvgGenImage get search => const SvgGenImage('assets/svg/search.svg');

  /// File path: assets/svg/setting.svg
  SvgGenImage get setting => const SvgGenImage('assets/svg/setting.svg');

  /// File path: assets/svg/setting_solid.svg
  SvgGenImage get settingSolid =>
      const SvgGenImage('assets/svg/setting_solid.svg');

  /// File path: assets/svg/share.svg
  SvgGenImage get share => const SvgGenImage('assets/svg/share.svg');

  /// File path: assets/svg/shop.svg
  SvgGenImage get shop => const SvgGenImage('assets/svg/shop.svg');

  /// File path: assets/svg/top_up.svg
  SvgGenImage get topUp => const SvgGenImage('assets/svg/top_up.svg');

  /// File path: assets/svg/voucher.svg
  SvgGenImage get voucher => const SvgGenImage('assets/svg/voucher.svg');

  /// File path: assets/svg/voucher_solid.svg
  SvgGenImage get voucherSolid =>
      const SvgGenImage('assets/svg/voucher_solid.svg');

  /// File path: assets/svg/wallet.svg
  SvgGenImage get wallet => const SvgGenImage('assets/svg/wallet.svg');

  /// File path: assets/svg/wallet_solid.svg
  SvgGenImage get walletSolid =>
      const SvgGenImage('assets/svg/wallet_solid.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        arrowLeft,
        bill,
        cart,
        category,
        dataPlan,
        favourite,
        favouriteSolid,
        flight,
        home,
        homeSolid,
        like,
        likeSolid,
        notifications,
        search,
        setting,
        settingSolid,
        share,
        shop,
        topUp,
        voucher,
        voucherSolid,
        wallet,
        walletSolid
      ];
}

class Assets {
  Assets._();

  static const $AssetsJpgGen jpg = $AssetsJpgGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated Clip? clipBehavior,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      color: color,
      colorBlendMode: colorBlendMode,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
