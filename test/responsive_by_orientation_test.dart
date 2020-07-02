import 'package:ct_responsive/src/custom_widgets/responsive_by_orientation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

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

    testWidgets("returns the landscape widget when orientation is landscape",
        (WidgetTester tester) async {
      tester.binding.window.physicalSizeTestValue = Size(800, 320);
      await tester.pumpWidget(ResponsiveByOrientation(
        landscapeChild: Text("landscape"),
        portraitChild: Text("portrait"),
      ));
      final findText = find.text("landscape");
      expect(findText, findsOneWidget);
    });
  });
}
