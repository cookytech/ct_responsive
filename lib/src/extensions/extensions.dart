import 'package:ct_responsive/src/custom_widgets/responsive_by_orientation.dart';
import 'package:flutter/material.dart';
part 'when_orientation.dart';

extension ResponsiveExtensions on Widget {
  Widget whenOrientationLandscape(Widget landscapeWidget) =>
      _$whenOrientationLandscape(landscapeWidget, this);

  Widget whenOrientationPortrait(Widget portraitWidget) =>
      _$whenOrientationPortrait(portraitWidget, this);
}
