import 'package:ct_responsive/src/custom_widgets/responsive_by_orientation.dart';
import 'package:ct_responsive/src/custom_widgets/responsive_by_platform.dart';
import 'package:flutter/material.dart';

part 'when_orientation.dart';

/// Extension wrapper on [Widget] that contains all the responsive functions of this library
extension ResponsiveExtensions on Widget {
  // Extensions functions for orientation
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

  // Extensions functions for platform
  /// Extension function, uses the source as defaultChild and the parameter as
  /// the iosChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformIos(iosChild);
  /// '''
  Widget whenPlatformIos(Widget iosChild) => _$whenPlatformIos(this, iosChild);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the androidChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformAndroid(androidChild);
  /// '''
  Widget whenPlatformAndroid(Widget androidChild) =>
      _$whenPlatformAndroid(this, androidChild);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the fuchsiaChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformFuchsia(fuchsiaChild);
  /// '''
  Widget whenPlatformFuchsia(Widget fuchsiaChild) =>
      _$whenPlatformFuchsia(this, fuchsiaChild);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the macOsChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformMacOs(macOsChild);
  /// '''
  Widget whenPlatformMacOs(Widget macOsChild) =>
      _$whenPlatformMacOs(this, macOsChild);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the windowsChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformWindows(windowsChild);
  /// '''
  Widget whenPlatformWindows(Widget windowsChild) =>
      _$whenPlatformWindows(this, windowsChild);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the linuxChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformLinux(linuxChild);
  /// '''
  Widget whenPlatformLinux(Widget linuxChild) =>
      _$whenPlatformLinux(this, linuxChild);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the notIosChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformIsNotIos(notIosChild);
  /// '''
  Widget whenPlatformIsNotIos(Widget notIosChild) =>
      _$whenPlatformIsNotIos(this, notIosChild);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the notAndroidChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformIsNotAndroid(notAndroidChild);
  /// '''
  Widget whenPlatformIsNotAndroid(Widget notAndroidChild) =>
      _$whenPlatformIsNotAndroid(this, notAndroidChild);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the notFuchsiaChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformIsNotFuchsia(notFuchsiaChild);
  /// '''
  Widget whenPlatformIsNotFuchsia(Widget notFuchsiaChild) =>
      _$whenPlatformIsNotFuchsia(this, notFuchsiaChild);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the notMacOsChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformIsNotMacOs(notMacOsChild);
  /// '''
  Widget whenPlatformIsNotMacOs(Widget notMacOsChild) =>
      _$whenPlatformIsNotMacOs(this, notMacOsChild);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the notWindowsChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformIsNotWindows(notWindowsChild);
  /// '''
  Widget whenPlatformIsNotWindows(Widget notWindowsChild) =>
      _$whenPlatformIsNotWindows(this, notWindowsChild);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the notLinuxChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenPlatformLinux(notLinuxChild);
  /// '''
  Widget whenPlatformIsNotLinux(Widget notLinuxChild) =>
      _$whenPlatformIsNotLinux(this, notLinuxChild);

  /// the platformChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenThesePlatforms(platformChild);
  /// '''
  Widget whenThesePlatforms(
          Widget platformChild, List<TargetPlatform> platforms) =>
      _$whenThesePlatform(this, platformChild, platforms);

  /// Extension function, uses the source as defaultChild and the parameter as
  /// the notPlatformChild
  ///
  /// **Usage:**
  /// '''dart
  /// defaultWidget.whenNotThesePlatformIos(notPlatformChild);
  /// '''
  Widget whenNotThesePlatform(
          Widget notPlatformChild, List<TargetPlatform> platforms) =>
      _$whenNotThesePlatform(this, notPlatformChild, platforms);
}
