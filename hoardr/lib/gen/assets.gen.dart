/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/Icons/Bid.jpg
  AssetGenImage get bid => const AssetGenImage('assets/Icons/Bid.jpg');

  /// File path: assets/Icons/Clothes.jpg
  AssetGenImage get clothes => const AssetGenImage('assets/Icons/Clothes.jpg');

  /// File path: assets/Icons/Cloud.jpg
  AssetGenImage get cloud => const AssetGenImage('assets/Icons/Cloud.jpg');

  /// File path: assets/Icons/Electronics.jpg
  AssetGenImage get electronics =>
      const AssetGenImage('assets/Icons/Electronics.jpg');

  /// File path: assets/Icons/Email.jpg
  AssetGenImage get email => const AssetGenImage('assets/Icons/Email.jpg');

  /// File path: assets/Icons/Jewelry.jpg
  AssetGenImage get jewelry => const AssetGenImage('assets/Icons/Jewelry.jpg');

  /// File path: assets/Icons/Machinery.jpg
  AssetGenImage get machinery =>
      const AssetGenImage('assets/Icons/Machinery.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bid, clothes, cloud, electronics, email, jewelry, machinery];
}

class $AssetsPageIconsGen {
  const $AssetsPageIconsGen();

  /// File path: assets/PageIcons/Account Create Success.jpg
  AssetGenImage get accountCreateSuccess =>
      const AssetGenImage('assets/PageIcons/Account Create Success.jpg');

  /// File path: assets/PageIcons/Hoardr.jpg
  AssetGenImage get hoardr =>
      const AssetGenImage('assets/PageIcons/Hoardr.jpg');

  /// File path: assets/PageIcons/Password.jpg
  AssetGenImage get password =>
      const AssetGenImage('assets/PageIcons/Password.jpg');

  /// File path: assets/PageIcons/People.jpg
  AssetGenImage get people =>
      const AssetGenImage('assets/PageIcons/People.jpg');

  /// File path: assets/PageIcons/Test Success Sent.jpg
  AssetGenImage get testSuccessSent =>
      const AssetGenImage('assets/PageIcons/Test Success Sent.jpg');

  /// File path: assets/PageIcons/paper-plane 1.jpg
  AssetGenImage get paperPlane1 =>
      const AssetGenImage('assets/PageIcons/paper-plane 1.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        accountCreateSuccess,
        hoardr,
        password,
        people,
        testSuccessSent,
        paperPlane1
      ];
}

class $AssetsProductsGen {
  const $AssetsProductsGen();

  /// File path: assets/Products/Bag.jpg
  AssetGenImage get bag => const AssetGenImage('assets/Products/Bag.jpg');

  /// File path: assets/Products/Box.jpg
  AssetGenImage get box => const AssetGenImage('assets/Products/Box.jpg');

  /// File path: assets/Products/Driller.jpg
  AssetGenImage get driller =>
      const AssetGenImage('assets/Products/Driller.jpg');

  /// File path: assets/Products/EthiopianJewelry.jpg
  AssetGenImage get ethiopianJewelry =>
      const AssetGenImage('assets/Products/EthiopianJewelry.jpg');

  /// File path: assets/Products/Gas.jpg
  AssetGenImage get gas => const AssetGenImage('assets/Products/Gas.jpg');

  /// File path: assets/Products/GermanCouch.jpg
  AssetGenImage get germanCouch =>
      const AssetGenImage('assets/Products/GermanCouch.jpg');

  /// File path: assets/Products/HandCushion.jpg
  AssetGenImage get handCushion =>
      const AssetGenImage('assets/Products/HandCushion.jpg');

  /// File path: assets/Products/PieceOfCloth.jpg
  AssetGenImage get pieceOfCloth =>
      const AssetGenImage('assets/Products/PieceOfCloth.jpg');

  /// File path: assets/Products/PiggyCouch.jpg
  AssetGenImage get piggyCouch =>
      const AssetGenImage('assets/Products/PiggyCouch.jpg');

  /// File path: assets/Products/Sack.jpg
  AssetGenImage get sack => const AssetGenImage('assets/Products/Sack.jpg');

  /// File path: assets/Products/WallSwitch.jpg
  AssetGenImage get wallSwitch =>
      const AssetGenImage('assets/Products/WallSwitch.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        bag,
        box,
        driller,
        ethiopianJewelry,
        gas,
        germanCouch,
        handCushion,
        pieceOfCloth,
        piggyCouch,
        sack,
        wallSwitch
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsPageIconsGen pageIcons = $AssetsPageIconsGen();
  static const $AssetsProductsGen products = $AssetsProductsGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
