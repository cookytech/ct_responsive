import 'package:ct_responsive/ct_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ct_test_helpers/ct_test_helpers.dart';

main() {
  group("Custom widget", () {
    test("can construct", () {
      final widget = ResponsiveByOrientation(
        landscapeChild: Container(),
        portraitChild: Center(
          child: Container(),
        ),
      );
      expect(widget, isNotNull);
    });

    testWidgets("returns the portrait widget when orientation is portrait",
        (WidgetTester tester) async {
      await tester.setDeviceSize(Size(320, 800));
      await tester.pumpWidget(
        ResponsiveByOrientation(
          landscapeChild: Text("landscape"),
          portraitChild: Text("portrait"),
        ).wrapWithMaterialApp(),
      );
      final findPortraitText = find.text("portrait");
      expect(findPortraitText, findsOneWidget);
    });

    testWidgets("returns the landscape widget when orientation is landscape",
        (WidgetTester tester) async {
      await tester.setDeviceSize(Size(800, 320));
      await tester.pumpWidget(
        ResponsiveByOrientation(
          landscapeChild: Text("landscape"),
          portraitChild: Text("portrait"),
        ).wrapWithMaterialApp(),
      );
      final findLandscapeText = find.text("landscape");
      expect(findLandscapeText, findsOneWidget);
    });
  });

  group("Extension functions", () {
    group("whenOrientationLandscape", () {
      testWidgets("shows original when portrait", (WidgetTester tester) async {
        final originalWidget = Text("original");
        final landscapeWidget = Text("landscape");
        tester.setDeviceSize(Size(320, 800));
        await tester.pumpWidget(originalWidget
            .whenOrientationLandscape(landscapeWidget)
            .wrapWithMaterialApp());

        final originalWidgetFinder = find.text("original");
        expect(originalWidgetFinder, findsOneWidget);
      });

      testWidgets("shows landscape when landscape",
          (WidgetTester tester) async {
        final originalWidget = Text("original");
        final landscapeWidget = Text("landscape");
        tester.setDeviceSize(Size(800, 320));
        await tester.pumpWidget(originalWidget
            .whenOrientationLandscape(landscapeWidget)
            .wrapWithMaterialApp());

        final landscapeWidgetFinder = find.text("landscape");
        expect(landscapeWidgetFinder, findsOneWidget);
      });
    });

    group("whenOrientationPortrait", () {
      testWidgets("shows original when landscape", (WidgetTester tester) async {
        final originalWidget = Text("original");
        final portraitWidget = Text("portrait");
        tester.setDeviceSize(Size(800, 320));
        await tester.pumpWidget(originalWidget
            .whenOrientationPortrait(portraitWidget)
            .wrapWithMaterialApp());
        final originalWidgetFinder = find.text("original");
        expect(originalWidgetFinder, findsOneWidget);
      });

      testWidgets("shows portraitWidget when portrait",
          (WidgetTester tester) async {
        final originalWidget = Text("original");
        final portraitWidget = Text("portrait");
        tester.setDeviceSize(Size(320, 800));
        await tester.pumpWidget(originalWidget
            .whenOrientationPortrait(portraitWidget)
            .wrapWithMaterialApp());
        final originalWidgetFinder = find.text("portrait");
        expect(originalWidgetFinder, findsOneWidget);
      });
    });
  });
}
