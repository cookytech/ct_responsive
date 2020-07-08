import 'dart:io';

import 'package:flutter/material.dart';

/// Widget takes a child for possible platforms and
/// renders according to platform

class ResponsiveByPlatform extends StatelessWidget {
  /// Widget that will rendered when no platform Provided
  final Widget defaultChild;

  /// Widget that will rendered when [TargetPlatform] is [TargetPlatform.android]
  final Widget androidChild;

  /// Widget that will rendered when [TargetPlatform] is [TargetPlatform.iOS]
  final Widget iosChild;

  /// Widget that will rendered when [TargetPlatform] is [TargetPlatform.fuchsia]
  final Widget fuchsiaChild;

  /// Widget that will rendered when [TargetPlatform] is [TargetPlatform.windows]
  final Widget windowsChild;

  /// Widget that will rendered when [TargetPlatform] is [TargetPlatform.linux]
  final Widget linuxChild;

  /// Widget that will rendered when [TargetPlatform] is [TargetPlatform.macOS]
  final Widget macOsChild;

  const ResponsiveByPlatform({
    Key key,
    this.androidChild,
    this.iosChild,
    this.fuchsiaChild,
    this.windowsChild,
    this.linuxChild,
    this.macOsChild,
    this.defaultChild,
  })  : assert(defaultChild != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return androidChild ?? defaultChild;
    } else if (Platform.isIOS) {
      return iosChild ?? defaultChild;
    } else if (Platform.isFuchsia) {
      return fuchsiaChild ?? defaultChild;
    } else if (Platform.isLinux) {
      return linuxChild ?? defaultChild;
    } else if (Platform.isMacOS) {
      return macOsChild ?? defaultChild;
    } else if (Platform.isWindows) {
      return windowsChild ?? defaultChild;
    } else {
      return defaultChild;
    }
  }
}
