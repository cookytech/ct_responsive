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
