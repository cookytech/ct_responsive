part of 'responsive_extensions.dart';

// helper functions for extensions of widget on orientation
Widget _$whenOrientationLandscape(
        Widget landscapeWidget, Widget originalWidget) =>
    ResponsiveByOrientation(
      landscapeChild: landscapeWidget,
      portraitChild: originalWidget,
    );

Widget _$whenOrientationPortrait(
        Widget portraitWidget, Widget originalWidget) =>
    ResponsiveByOrientation(
      landscapeChild: originalWidget,
      portraitChild: portraitWidget,
    );

// helper functions for extensions of widget on platform
Widget _$whenPlatformIos(Widget defaultChild, Widget iosChild) =>
    ResponsiveByPlatform(
      defaultChild: defaultChild,
      iosChild: iosChild,
    );
Widget _$whenPlatformAndroid(Widget defaultChild, Widget androidChild) =>
    ResponsiveByPlatform(
      defaultChild: defaultChild,
      androidChild: androidChild,
    );
Widget _$whenPlatformFuchsia(Widget defaultChild, Widget fuchsiaChild) =>
    ResponsiveByPlatform(
      defaultChild: defaultChild,
      fuchsiaChild: fuchsiaChild,
    );
Widget _$whenPlatformLinux(Widget defaultChild, Widget linuxChild) =>
    ResponsiveByPlatform(
      defaultChild: defaultChild,
      linuxChild: linuxChild,
    );
Widget _$whenPlatformWindows(Widget defaultChild, Widget windowsChild) =>
    ResponsiveByPlatform(
      defaultChild: defaultChild,
      windowsChild: windowsChild,
    );
Widget _$whenPlatformMacOs(Widget defaultChild, Widget macOsChild) =>
    ResponsiveByPlatform(
      defaultChild: defaultChild,
      macOsChild: macOsChild,
    );
Widget _$whenPlatformIsNotIos(Widget iosChild, Widget notIosChild) =>
    ResponsiveByPlatform(
      defaultChild: notIosChild,
      iosChild: iosChild,
    );
Widget _$whenPlatformIsNotAndroid(
        Widget androidChild, Widget notAndroidChild) =>
    ResponsiveByPlatform(
      defaultChild: notAndroidChild,
      androidChild: androidChild,
    );
Widget _$whenPlatformIsNotFuchsia(
        Widget fuchsiaChild, Widget notFuchsiaChild) =>
    ResponsiveByPlatform(
      defaultChild: notFuchsiaChild,
      fuchsiaChild: fuchsiaChild,
    );
Widget _$whenPlatformIsNotLinux(Widget linuxChild, Widget notLinuxChild) =>
    ResponsiveByPlatform(
      defaultChild: notLinuxChild,
      linuxChild: linuxChild,
    );
Widget _$whenPlatformIsNotWindows(
        Widget windowsChild, Widget notWindowsChild) =>
    ResponsiveByPlatform(
      defaultChild: notWindowsChild,
      windowsChild: windowsChild,
    );
Widget _$whenPlatformIsNotMacOs(Widget macOsChild, Widget notMacOsChild) =>
    ResponsiveByPlatform(
      defaultChild: notMacOsChild,
      macOsChild: macOsChild,
    );
Widget _$whenThesePlatform(Widget notPlatformChild, Widget platformChild,
        List<TargetPlatform> platforms) =>
    ResponsiveByPlatform(
      androidChild: platforms.contains(TargetPlatform.android)
          ? platformChild
          : notPlatformChild,
      iosChild: platforms.contains(TargetPlatform.iOS)
          ? platformChild
          : notPlatformChild,
      fuchsiaChild: platforms.contains(TargetPlatform.fuchsia)
          ? platformChild
          : notPlatformChild,
      macOsChild: platforms.contains(TargetPlatform.macOS)
          ? platformChild
          : notPlatformChild,
      linuxChild: platforms.contains(TargetPlatform.linux)
          ? platformChild
          : notPlatformChild,
      windowsChild: platforms.contains(TargetPlatform.windows)
          ? platformChild
          : notPlatformChild,
    );
Widget _$whenNotThesePlatform(Widget platformChild, Widget notPlatformChild,
        List<TargetPlatform> platforms) =>
    ResponsiveByPlatform(
      androidChild: !platforms.contains(TargetPlatform.android)
          ? notPlatformChild
          : platformChild,
      iosChild: !platforms.contains(TargetPlatform.iOS)
          ? notPlatformChild
          : platformChild,
      fuchsiaChild: !platforms.contains(TargetPlatform.fuchsia)
          ? notPlatformChild
          : platformChild,
      macOsChild: !platforms.contains(TargetPlatform.macOS)
          ? notPlatformChild
          : platformChild,
      linuxChild: !platforms.contains(TargetPlatform.linux)
          ? notPlatformChild
          : platformChild,
      windowsChild: !platforms.contains(TargetPlatform.windows)
          ? notPlatformChild
          : platformChild,
    );
