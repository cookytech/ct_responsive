import 'package:ct_responsive/ct_responsive.dart';
import 'package:ct_test_helpers/ct_test_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final testPortraitSize = Size(320, 800);
  final testLandscapeSize = Size(800, 320);
  group("Value Extensions", () {
    group("valueWhenOrientationLandscape", () {
      testWidgets("gives landscape value when device landscape",
          (WidgetTester tester) async {
        const originalText = "portrait";
        const landscapeText = "landscape";
        tester.setDeviceSize(testLandscapeSize);
        await tester.pumpWidget(Builder(builder: (context) {
          return Text(originalText.valueWhenOrientaitonLandscape(
              context, landscapeText));
        }).wrapWithMaterialApp());
        final findLandscapeText = find.text(landscapeText);
        expect(findLandscapeText, findsOneWidget);
      });
      testWidgets("gives original value when device portrait",
          (WidgetTester tester) async {
        const originalText = "portrait";
        const landscapeText = "landscape";
        tester.setDeviceSize(testPortraitSize);
        await tester.pumpWidget(Builder(builder: (context) {
          return Text(originalText.valueWhenOrientaitonLandscape(
              context, landscapeText));
        }).wrapWithMaterialApp());
        final findLandscapeText = find.text(originalText);
        expect(findLandscapeText, findsOneWidget);
      });
    });
    group("valueWhenOrientationPortrait", () {
      testWidgets("gives portrait value when orientation is portrait",
          (WidgetTester tester) async {
        const portraitText = "portrait";
        const originalText = "landscape";
        tester.setDeviceSize(Size(320, 800));
        await tester.pumpWidget(Builder(builder: (context) {
          return Text(
              originalText.valueWhenOrientationPortrait(context, portraitText));
        }).wrapWithMaterialApp());
        final findPortraitText = find.text(portraitText);
        expect(findPortraitText, findsOneWidget);
      });

      testWidgets("gives original value when orientation is landscape",
          (WidgetTester tester) async {
        const portraitText = "portrait";
        const originalText = "landscape";
        tester.setDeviceSize(testLandscapeSize);
        await tester.pumpWidget(Builder(builder: (context) {
          return Text(
              originalText.valueWhenOrientationPortrait(context, portraitText));
        }).wrapWithMaterialApp());
        final findPortraitText = find.text(portraitText);
        expect(findPortraitText, findsOneWidget);
      });
    });
  });
}
