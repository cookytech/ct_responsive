import 'package:ct_responsive/src/custom_values/value_by_orientation.dart';
import 'package:flutter/material.dart';

/// Extensions on any type T i.e. Object to be able to easily access
/// [ValueByOrientation] with reasonable defaults.
///
/// This is a concise syntactic sugar for using [ValueByOrientation]
extension ValueExtension<T> on T {
  /// Will give the current value as portraitValue and take additional parameters
  /// for landscapeValue and context
  T valueWhenOrientaitonLandscape(BuildContext context, T landscapeValue) =>
      ValueByOrientation<T>(landscapeValue, this, context).value;

  /// Will give the current value as landscapeValue and take additional parameters
  /// for portraitValue and context
  T valueWhenOrientationPortrait(BuildContext context, T portraitValue) =>
      ValueByOrientation<T>(this, portraitValue, context).value;
}
