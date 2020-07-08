import 'package:ct_responsive/ct_responsive.dart';
import 'package:ct_test_helpers/ct_test_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group("Value Extensions", () {
    group("when orientation is landscape", () {
      testWidgets("get landscape value when landscape",
          (WidgetTester tester) async {
        const portraitText = "portrait";
        const landscapeText = "landscape";
        tester.setDeviceSize(Size(800, 320));
        await tester.pumpWidget(Builder(builder: (context) {
          return Text(portraitText.whenLandscape(context, landscapeText));
        }).wrapWithMaterialApp());
        final findLandscapeText = find.text(landscapeText);
        expect(findLandscapeText, findsOneWidget);
      });
    });
    group("when orientation is portrait", () {
      testWidgets("get portrait value when portrait",
          (WidgetTester tester) async {
        const portraitText = "portrait";
        const landscapeText = "landscape";
        tester.setDeviceSize(Size(320, 800));
        await tester.pumpWidget(Builder(builder: (context) {
          return Text(landscapeText.whenPortrait(context, portraitText));
        }).wrapWithMaterialApp());
        final findPortraitText = find.text(portraitText);
        expect(findPortraitText, findsOneWidget);
      });
    });
  });
}
