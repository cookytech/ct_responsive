import 'package:ct_responsive/ct_responsive.dart';
import 'package:ct_responsive/src/custom_widgets/responsive_by_platform.dart';
import 'package:ct_test_helpers/ct_test_helpers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final defaultText = Text("default");
  group("ResponsiveByPlatform", () {
    test("Can Construct", () {
      final widget = ResponsiveByPlatform(
        macOsChild: Text("macos"),
        defaultChild: Text("default"),
      ).wrapWithMaterialApp();
      expect(widget, isNotNull);
    });
    testWidgets("shows android widget when target platform is android",
        (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;
      await tester.pumpWidget(ResponsiveByPlatform(
        defaultChild: Text("default"),
        androidChild: Text("android"),
      ).wrapWithMaterialApp());
      final findAndroidText = find.text("android");
      final findDefaultText = find.text("default");
      // Setting this null will reset it to the current platform
      debugDefaultTargetPlatformOverride = null;
      expect(findAndroidText, findsOneWidget);
      expect(findDefaultText, findsNothing);
    });
    testWidgets("shows ios widget when target platform is ios",
        (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
      await tester.pumpWidget(ResponsiveByPlatform(
        defaultChild: Text("default"),
        iosChild: Text("ios"),
      ).wrapWithMaterialApp());
      final findIosText = find.text("ios");
      final findDefaultText = find.text("default");
      // Setting this null will reset it to the current platform
      debugDefaultTargetPlatformOverride = null;
      expect(findIosText, findsOneWidget);
      expect(findDefaultText, findsNothing);
    });
    testWidgets("shows fuchsia widget when target platform is fuchsia",
        (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
      await tester.pumpWidget(ResponsiveByPlatform(
        defaultChild: Text("default"),
        fuchsiaChild: Text("fuchsia"),
      ).wrapWithMaterialApp());
      final findFuchsiaText = find.text("fuchsia");
      final findDefaultText = find.text("default");
      // Setting this null will reset it to the current platform
      debugDefaultTargetPlatformOverride = null;
      expect(findFuchsiaText, findsOneWidget);
      expect(findDefaultText, findsNothing);
    });
    testWidgets("shows macos widget when target platform is macos",
        (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.macOS;
      await tester.pumpWidget(ResponsiveByPlatform(
        defaultChild: Text("default"),
        macOsChild: Text("macos"),
      ).wrapWithMaterialApp());
      final findMacOsText = find.text("macos");
      final findDefaultText = find.text("default");
      // Setting this null will reset it to the current platform
      debugDefaultTargetPlatformOverride = null;
      expect(findMacOsText, findsOneWidget);
      expect(findDefaultText, findsNothing);
    });
    testWidgets("shows windows widget when target platform is windows",
        (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.windows;
      await tester.pumpWidget(ResponsiveByPlatform(
        defaultChild: Text("default"),
        windowsChild: Text("windows"),
      ).wrapWithMaterialApp());
      final findWindowsText = find.text("windows");
      final findDefaultText = find.text("default");
      // Setting this null will reset it to the current platform
      debugDefaultTargetPlatformOverride = null;
      expect(findWindowsText, findsOneWidget);
      expect(findDefaultText, findsNothing);
    });
    testWidgets("shows linux widget when target platform is linux",
        (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.linux;
      await tester.pumpWidget(ResponsiveByPlatform(
        defaultChild: Text("default"),
        linuxChild: Text("linux"),
      ).wrapWithMaterialApp());
      final findLinuxText = find.text("linux");
      final findDefaultText = find.text("default");
      // Setting this null will reset it to the current platform
      debugDefaultTargetPlatformOverride = null;
      expect(findLinuxText, findsOneWidget);
      expect(findDefaultText, findsNothing);
    });
  });
  group("Extension Functions", () {
    group("Test for when platform is extensions", () {
      testWidgets("shows android when android", (WidgetTester tester) async {
        debugDefaultTargetPlatformOverride = TargetPlatform.android;
        await tester.pumpWidget(defaultText
            .whenPlatformAndroid(Text("android"))
            .wrapWithMaterialApp());
        final findAndroidText = find.text("android");
        final findDefaultText = find.text("default");
        // Setting this null will reset it to the current platform
        debugDefaultTargetPlatformOverride = null;
        expect(findAndroidText, findsOneWidget);
        expect(findDefaultText, findsNothing);
      });
      testWidgets("shows ios when ios", (WidgetTester tester) async {
        debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
        await tester.pumpWidget(
            defaultText.whenPlatformIos(Text("ios")).wrapWithMaterialApp());
        final findIosText = find.text("ios");
        final findDefaultText = find.text("default");
        // Setting this null will reset it to the current platform
        debugDefaultTargetPlatformOverride = null;
        expect(findIosText, findsOneWidget);
        expect(findDefaultText, findsNothing);
      });
      testWidgets("shows fuchsia when fuchsia", (WidgetTester tester) async {
        debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
        await tester.pumpWidget(defaultText
            .whenPlatformFuchsia(Text("fuchsia"))
            .wrapWithMaterialApp());
        final findAndroidText = find.text("fuchsia");
        final findDefaultText = find.text("default");
        // Setting this null will reset it to the current platform
        debugDefaultTargetPlatformOverride = null;
        expect(findAndroidText, findsOneWidget);
        expect(findDefaultText, findsNothing);
      });
      testWidgets("shows macos when macos", (WidgetTester tester) async {
        debugDefaultTargetPlatformOverride = TargetPlatform.macOS;
        await tester.pumpWidget(
            defaultText.whenPlatformMacOs(Text("macos")).wrapWithMaterialApp());
        final findMacOsText = find.text("macos");
        final findDefaultText = find.text("default");
        // Setting this null will reset it to the current platform
        debugDefaultTargetPlatformOverride = null;
        expect(findMacOsText, findsOneWidget);
        expect(findDefaultText, findsNothing);
      });
      testWidgets("shows linux when linux", (WidgetTester tester) async {
        debugDefaultTargetPlatformOverride = TargetPlatform.linux;
        await tester.pumpWidget(
            defaultText.whenPlatformLinux(Text("linux")).wrapWithMaterialApp());
        final findLinuxText = find.text("linux");
        final findDefaultText = find.text("default");
        // Setting this null will reset it to the current platform
        debugDefaultTargetPlatformOverride = null;
        expect(findLinuxText, findsOneWidget);
        expect(findDefaultText, findsNothing);
      });
      testWidgets("shows windows when windows", (WidgetTester tester) async {
        debugDefaultTargetPlatformOverride = TargetPlatform.windows;
        await tester.pumpWidget(defaultText
            .whenPlatformWindows(Text("windows"))
            .wrapWithMaterialApp());
        final findWindowsText = find.text("windows");
        final findDefaultText = find.text("default");
        // Setting this null will reset it to the current platform
        debugDefaultTargetPlatformOverride = null;
        expect(findWindowsText, findsOneWidget);
        expect(findDefaultText, findsNothing);
      });
    });
    group("Test for when platform is not extensions", () {});
    group("whenThesePlatforms", () {
      group("when a single platform ios is provided", () {
        testWidgets("shows ios when platform is ios",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("ios"), [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsOneWidget);
          expect(findDefaultText, findsNothing);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is android",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.android;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("ios"), [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is fuchsia",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("ios"), [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is macos",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.macOS;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("ios"), [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is windows",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.windows;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("ios"), [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is linux",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.linux;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("ios"), [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
      });
      group("when multiple platforms android and ios  are provided", () {
        testWidgets("shows platform found when target platform is android",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.android;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("platform found"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findPlatformFoundText = find.text("platform found");
          final findDefaultText = find.text("default");
          expect(findPlatformFoundText, findsOneWidget);
          expect(findDefaultText, findsNothing);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows platform found when target platform is ios",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("platform found"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findPlatformFoundText = find.text("platform found");
          final findDefaultText = find.text("default");
          expect(findPlatformFoundText, findsOneWidget);
          expect(findDefaultText, findsNothing);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is fuchsia",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("platform found"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findPlatformFoundText = find.text("platform found");
          final findDefaultText = find.text("default");
          expect(findPlatformFoundText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default  when target platform is macos",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.macOS;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("platform found"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findPlatformFoundText = find.text("platform found");
          final findDefaultText = find.text("default");
          expect(findPlatformFoundText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is windows",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.windows;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("platform found"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findPlatformFoundText = find.text("platform found");
          final findDefaultText = find.text("default");
          expect(findPlatformFoundText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is linux",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.linux;
          await tester.pumpWidget(defaultText.whenThesePlatforms(
              Text("platform found"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findPlatformFoundText = find.text("platform found");
          final findDefaultText = find.text("default");
          expect(findPlatformFoundText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
      });
    });
    group("whenNotThesePlatforms", () {
      group("when a single platform ios is provided", () {
        final iosText = Text("ios");
        testWidgets("shows default when platform is ios",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
          await tester.pumpWidget(iosText.whenNotThesePlatforms(
              defaultText, [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsOneWidget);
          expect(findDefaultText, findsNothing);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is android",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.android;
          await tester.pumpWidget(iosText.whenNotThesePlatforms(
              defaultText, [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is fuchsia",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
          await tester.pumpWidget(iosText.whenNotThesePlatforms(
              defaultText, [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is macos",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.macOS;
          await tester.pumpWidget(iosText.whenNotThesePlatforms(
              defaultText, [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is windows",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.windows;
          await tester.pumpWidget(iosText.whenNotThesePlatforms(
              defaultText, [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is linux",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.linux;
          await tester.pumpWidget(iosText.whenNotThesePlatforms(
              defaultText, [TargetPlatform.iOS]).wrapWithMaterialApp());
          final findIosText = find.text("ios");
          final findDefaultText = find.text("default");
          expect(findIosText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
      });
      group("when multiple platforms android and ios  are provided", () {
        testWidgets("shows default when target platform is android",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.android;
          await tester.pumpWidget(defaultText.whenNotThesePlatforms(
              Text("notThesePlatform"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findNotThesePlatformText = find.text("notThesePlatform");
          final findDefaultText = find.text("default");
          expect(findNotThesePlatformText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows default when target platform is ios",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
          await tester.pumpWidget(defaultText.whenNotThesePlatforms(
              Text("notThesePlatform"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findNotThesePlatformText = find.text("notThesePlatform");
          final findDefaultText = find.text("default");
          expect(findNotThesePlatformText, findsNothing);
          expect(findDefaultText, findsOneWidget);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows notThesePlatform when target platform is fuchsia",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
          await tester.pumpWidget(defaultText.whenNotThesePlatforms(
              Text("notThesePlatform"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findNotThesePlatformText = find.text("notThesePlatform");
          final findDefaultText = find.text("default");
          expect(findNotThesePlatformText, findsOneWidget);
          expect(findDefaultText, findsNothing);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows notThesePlatform when target platform is macos",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.macOS;
          await tester.pumpWidget(defaultText.whenNotThesePlatforms(
              Text("notThesePlatform"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findNotThesePlatformText = find.text("notThesePlatform");
          final findDefaultText = find.text("default");
          expect(findNotThesePlatformText, findsOneWidget);
          expect(findDefaultText, findsNothing);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows notThesePlatform when target platform is windows",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.windows;
          await tester.pumpWidget(defaultText.whenNotThesePlatforms(
              Text("notThesePlatform"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findNotThesePlatformText = find.text("notThesePlatform");
          final findDefaultText = find.text("default");
          expect(findNotThesePlatformText, findsOneWidget);
          expect(findDefaultText, findsNothing);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
        testWidgets("shows notThesePlatform when target platform is linux",
            (WidgetTester tester) async {
          debugDefaultTargetPlatformOverride = TargetPlatform.linux;
          await tester.pumpWidget(defaultText.whenNotThesePlatforms(
              Text("notThesePlatform"), [
            TargetPlatform.iOS,
            TargetPlatform.android
          ]).wrapWithMaterialApp());
          final findNotThesePlatformText = find.text("notThesePlatform");
          final findDefaultText = find.text("default");
          expect(findNotThesePlatformText, findsOneWidget);
          expect(findDefaultText, findsNothing);
          // Setting this null will reset it to the current platform
          debugDefaultTargetPlatformOverride = null;
        });
      });
    });
  });
}
