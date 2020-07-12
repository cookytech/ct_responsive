import 'package:flutter/material.dart';

/// A class that takes in a `landscapeValue`, a `portraitValue` and [BuildContext] context
/// and exposes the correct `value` according to current orientation of the MediaQuery ancestor of the 
/// context.
/// 
/// This value can be of any type
class ValueByOrientation<T> {
  T _landscapeValue;
  T _portraitValue;
  BuildContext _context;

  T get value => MediaQuery.of(_context).orientation == Orientation.portrait
      ? _portraitValue
      : _landscapeValue;

  ValueByOrientation(T landscapeValue, T portraitValue, BuildContext context)
      : assert(landscapeValue != null),
        assert(portraitValue != null),
        assert(context != null),
        this._landscapeValue = landscapeValue,
        this._portraitValue = portraitValue,
        this._context = context;
}
