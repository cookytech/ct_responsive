# ct_responsive
A package to handle and empower responsive development patterns with the help of custom widgets 
and extension functions.

## Orientation
Custom widget and extension methods to make working with device orientation possible.

### ResponsiveByOrientation
- [x] Takes in a landscapeChild
- [x] Takes in a portraitChild
- [x] Builds the correct child depending on the device orientation

```dart
ResponsiveByOrientation(
  landscapeChild: landScapeChild,
  portraitChild: portraitChild,
);
```

#### Extension Functions
Extension functions for concise access to `ResponsiveByOrientation`

```dart
// Custom Widget Equivalent
ResponsiveByOrientation(
  landscapeChild: landScapeChild,
  portraitChild: portraitChild,
);

// extension 1
portraitChild.whenOrientationLandscape(landScapeChild);

// extension 2
landscapeChild.whenOrientationPortrait(portraitChild);
```
### ValueByOrientation
- [x] Works on values of any type. 
- [x] Takes `portraitValue`, `landscapeValue` and `BuildContext`
- [x] Returns the correct value using `MediaQuery` internally and exposes it on the `value` getter

```dart
Text(
  ValueByOrientation(
    "landscapeText",
    "portraitText", 
    context,
  ).value,
),
```

can also be extended to other values and types, as exemplified in the extension functions.

#### Extension functions
Extension functions on `Object` allowing this to be available for any type and make available `ValueByOrientation` class with defaults.

```dart
Text(
  '$_counter',
  style: Theme.of(context).textTheme.headline4.copyWith(
    fontSize: 34.0.valueWhenOrientaitonLandscape(
      context,
      21.0,
    ),
  ),
),

Text(
  '$_counter',
  style: Theme.of(context).textTheme.headline4.copyWith(
    fontSize: 34.0.valueWhenOrientaitonPortrait(
      context,
      21.0,
    ),
  ),
),

```

