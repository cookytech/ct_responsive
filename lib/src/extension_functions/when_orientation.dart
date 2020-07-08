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
