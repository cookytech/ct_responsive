import 'package:flutter/material.dart';

/// Widget that takes in a portraitChild and a landscapeChild and
/// renders the child based on device orientation.
class ResponsiveByOrientation extends StatelessWidget {
  /// Widget that will be rendered when [Orientation] is [Orientation.landscape]
  final Widget landscapeChild;

  /// Widget that will be rendered when [Orientation] is [Orientation.portrait]
  final Widget portraitChild;

  const ResponsiveByOrientation(
      {Key key, @required this.landscapeChild, @required this.portraitChild})
      : assert(landscapeChild != null),
        assert(portraitChild != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final Orientation _orientation = MediaQuery.of(context).orientation;
    return _orientation == Orientation.portrait
        ? portraitChild
        : landscapeChild;
  }
}
