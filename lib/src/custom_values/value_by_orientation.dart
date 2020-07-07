import 'package:flutter/material.dart';

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

