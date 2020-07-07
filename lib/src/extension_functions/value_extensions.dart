import 'package:ct_responsive/src/custom_values/value_by_orientation.dart';
import 'package:flutter/material.dart';

extension ValueExtension<T> on T {
  T whenLandscape(BuildContext context, T landscapeValue) =>
      ValueByOrientation<T>(landscapeValue, this, context).value;

  T whenPortrait(BuildContext context, T portraitValue) =>
      ValueByOrientation<T>(this, portraitValue, context).value;
}
