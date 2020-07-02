part of 'extensions.dart';

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
