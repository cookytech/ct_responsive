import 'package:flutter/material.dart';
import 'package:ct_responsive/ct_responsive.dart';

class OrientationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            // using ValueByOrientation Directly
            ValueByOrientation("landscape test", "portrait text", context)
                .value,
            style: TextStyle(
              // using with the help of extension functions
              fontSize: 24.0.valueWhenOrientaitonLandscape(context, 20.0),
            ),
          ),
        ),
        // Using ResponsiveByOrientation Directly
        ResponsiveByOrientation(
          landscapeChild: Text("landscape responsive by orientation"),
          portraitChild: Text("portrait responsive by orientation"),
        ),
        // Using via available extension method
        Text("portrait2 responsive by orientation").whenOrientationLandscape(
          Text("landscape2 responsive by orientation"),
        ),
      ],
    );
  }
}