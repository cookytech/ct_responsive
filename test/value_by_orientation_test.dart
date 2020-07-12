import 'package:ct_responsive/ct_responsive.dart';
import 'package:ct_test_helpers/ct_test_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DummyContext extends Mock implements BuildContext {}

main() {
  final testPortraitSize = Size(320, 800);
  final testLandscapeSize = Size(800, 320);

  group("Extension Functions", () {
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
        tester.setDeviceSize(testPortraitSize);
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
        final findPortraitText = find.text(originalText);
        expect(findPortraitText, findsOneWidget);
      });
    });
  });

  group("ValueByOrientation", () {
    final landScapeText = "landscape";
    final portraitText = "portrait";

    test("instantiates", () {
      final valueByOrientation =
          ValueByOrientation<int>(24, 45, DummyContext());
      expect(valueByOrientation, isNotNull);
    });

    /// This is very difficult to mock mediaquery data with a Mock Buildcontext
    /// TODO: Maybe a candidate for a issue in ct_test_helpers
    /// we need a mock context for running unit tests. For now we can test these values
    /// using a tester widget and running widget tests
    testWidgets("returns landscape value in landscape mode",
        (WidgetTester tester) async {
      // pump a text widget with the required value and then test for the correct value
      tester.setDeviceSize(testLandscapeSize);
      await tester.pumpWidget(
        ValueByOrientationTesterWidget(
          landscapeText: landScapeText,
          portraitText: portraitText,
        ).wrapWithMaterialApp(),
      );
      final findLandscapeText = find.text(landScapeText);
      expect(findLandscapeText, findsOneWidget);
    });
    testWidgets("returns portrait value in portrait mode",
        (WidgetTester tester) async {
      // pump a text widget with the required value and then test for the correct value
      tester.setDeviceSize(testPortraitSize);
      await tester.pumpWidget(
        ValueByOrientationTesterWidget(
          landscapeText: landScapeText,
          portraitText: portraitText,
        ).wrapWithMaterialApp(),
      );
      final findPortraitText = find.text(portraitText);
      expect(findPortraitText, findsOneWidget);
    });
  });
}

class ValueByOrientationTesterWidget extends StatelessWidget {
  final String landscapeText, portraitText;

  const ValueByOrientationTesterWidget(
      {Key key, this.landscapeText, this.portraitText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Text(ValueByOrientation(landscapeText, portraitText, context).value),
    );
  }
}
