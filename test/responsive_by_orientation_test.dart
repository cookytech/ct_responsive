import 'package:ct_responsive/src/custom_widgets/responsive_by_orientation.dart';
import 'package:flutter/cupertino.dart';
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
}
