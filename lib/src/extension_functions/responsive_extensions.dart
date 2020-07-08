import 'package:ct_responsive/src/custom_widgets/responsive_by_orientation.dart';
import 'package:ct_responsive/src/custom_widgets/responsive_by_platform.dart';
import 'package:flutter/material.dart';

part 'when_orientation.dart';

/// Extension wrapper on [Widget] that contains all the responsive functions of this library
extension ResponsiveExtensions on Widget {
  /// Extension function, uses the source as portraitWidget and the parameter as
  /// the landscapeWidget
  ///
  /// **Usage:**
  /// '''dart
  /// portraitWidget.whenOrientationLandscape(landscapeWidget);
  /// '''
  Widget whenOrientationLandscape(Widget landscapeWidget) =>
      _$whenOrientationLandscape(landscapeWidget, this);

  /// Extension function, uses the source as landscapeWidget and the parameter as
  /// the portraitWidget
  ///
  /// **Usage:**
  /// '''dart
  /// landscapeWidget.whenOrientationPortrait(portraitWidget);
  /// '''
  Widget whenOrientationPortrait(Widget portraitWidget) =>
      _$whenOrientationPortrait(portraitWidget, this);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the iosChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformIos(iosChild);
  /// '''
  Widget whenPlatformIos(Widget iosChild) => _$whenPlatformIos(this, iosChild);
}
