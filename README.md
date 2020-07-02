# ct_responsive
A package to handle and empower responsive development patterns with the help of custom widgets 
and extension functions.

## Responsive by orientation


### Custom Widget

**ResponsiveByOrientation**
- [x] Takes in a landscapeChild
- [x] Takes in a portraitChild
- [x] Builds the correct child depending on the device orientation
```dart
ResponsiveByOrientation(
  landscapeChild: landScapeChild,
  portraitChild: portraitChild,
);
```


### Extension Functions

Extension functions to make the syntax more concise.

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
