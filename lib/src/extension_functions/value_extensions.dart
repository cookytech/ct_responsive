import 'package:ct_responsive/src/custom_values/value_by_orientation.dart';
import 'package:flutter/material.dart';

extension ValueExtension<T> on T {
  T valueWhenOrientaitonLandscape(BuildContext context, T landscapeValue) =>
      ValueByOrientation<T>(landscapeValue, this, context).value;

  T valueWhenOrientationPortrait(BuildContext context, T portraitValue) =>
      ValueByOrientation<T>(this, portraitValue, context).value;
}
