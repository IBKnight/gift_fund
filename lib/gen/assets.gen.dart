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

  /// File path: assets/icons/add.svg
  SvgGenImage get add => const SvgGenImage('assets/icons/add.svg');

  /// File path: assets/icons/add_circle.svg
  SvgGenImage get addCircle => const SvgGenImage('assets/icons/add_circle.svg');

  /// File path: assets/icons/add_image.svg
  SvgGenImage get addImage => const SvgGenImage('assets/icons/add_image.svg');

  /// File path: assets/icons/alarm.svg
  SvgGenImage get alarm => const SvgGenImage('assets/icons/alarm.svg');

  /// File path: assets/icons/arrow_right.svg
  SvgGenImage get arrowRight =>
      const SvgGenImage('assets/icons/arrow_right.svg');

  /// File path: assets/icons/back.svg
  SvgGenImage get back => const SvgGenImage('assets/icons/back.svg');

  /// File path: assets/icons/budget.svg
  SvgGenImage get budget => const SvgGenImage('assets/icons/budget.svg');

  /// File path: assets/icons/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons/calendar.svg');

  /// File path: assets/icons/check_ok.svg
  SvgGenImage get checkOk => const SvgGenImage('assets/icons/check_ok.svg');

  /// File path: assets/icons/delete.svg
  SvgGenImage get delete => const SvgGenImage('assets/icons/delete.svg');

  /// File path: assets/icons/delete_cross.svg
  SvgGenImage get deleteCross =>
      const SvgGenImage('assets/icons/delete_cross.svg');

  /// File path: assets/icons/diagram.svg
  SvgGenImage get diagram => const SvgGenImage('assets/icons/diagram.svg');

  /// File path: assets/icons/diagram_outline.svg
  SvgGenImage get diagramOutline =>
      const SvgGenImage('assets/icons/diagram_outline.svg');

  /// File path: assets/icons/edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/icons/edit.svg');

  /// File path: assets/icons/empty.svg
  SvgGenImage get empty => const SvgGenImage('assets/icons/empty.svg');

  /// File path: assets/icons/event.svg
  SvgGenImage get event => const SvgGenImage('assets/icons/event.svg');

  /// File path: assets/icons/expand.svg
  SvgGenImage get expand => const SvgGenImage('assets/icons/expand.svg');

  /// File path: assets/icons/expand_list.svg
  SvgGenImage get expandList =>
      const SvgGenImage('assets/icons/expand_list.svg');

  /// File path: assets/icons/goal.svg
  SvgGenImage get goal => const SvgGenImage('assets/icons/goal.svg');

  /// File path: assets/icons/history.svg
  SvgGenImage get history => const SvgGenImage('assets/icons/history.svg');

  /// File path: assets/icons/holiday.svg
  SvgGenImage get holiday => const SvgGenImage('assets/icons/holiday.svg');

  /// File path: assets/icons/holiday_outline.svg
  SvgGenImage get holidayOutline =>
      const SvgGenImage('assets/icons/holiday_outline.svg');

  /// File path: assets/icons/list.svg
  SvgGenImage get list => const SvgGenImage('assets/icons/list.svg');

  /// File path: assets/icons/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icons/notification.svg');

  /// File path: assets/icons/one_person.svg
  SvgGenImage get onePerson => const SvgGenImage('assets/icons/one_person.svg');

  /// File path: assets/icons/persons.svg
  SvgGenImage get persons => const SvgGenImage('assets/icons/persons.svg');

  /// File path: assets/icons/settings_outline_eight.svg
  SvgGenImage get settingsOutlineEight =>
      const SvgGenImage('assets/icons/settings_outline_eight.svg');

  /// File path: assets/icons/settings_outline_six.svg
  SvgGenImage get settingsOutlineSix =>
      const SvgGenImage('assets/icons/settings_outline_six.svg');

  /// File path: assets/icons/settings_six.svg
  SvgGenImage get settingsSix =>
      const SvgGenImage('assets/icons/settings_six.svg');

  /// File path: assets/icons/smile.svg
  SvgGenImage get smile => const SvgGenImage('assets/icons/smile.svg');

  /// File path: assets/icons/smile_outline.svg
  SvgGenImage get smileOutline =>
      const SvgGenImage('assets/icons/smile_outline.svg');

  /// File path: assets/icons/statistic.svg
  SvgGenImage get statistic => const SvgGenImage('assets/icons/statistic.svg');

  /// File path: assets/icons/ufo.svg
  SvgGenImage get ufo => const SvgGenImage('assets/icons/ufo.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        add,
        addCircle,
        addImage,
        alarm,
        arrowRight,
        back,
        budget,
        calendar,
        checkOk,
        delete,
        deleteCross,
        diagram,
        diagramOutline,
        edit,
        empty,
        event,
        expand,
        expandList,
        goal,
        history,
        holiday,
        holidayOutline,
        list,
        notification,
        onePerson,
        persons,
        settingsOutlineEight,
        settingsOutlineSix,
        settingsSix,
        smile,
        smileOutline,
        statistic,
        ufo
      ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

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
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
