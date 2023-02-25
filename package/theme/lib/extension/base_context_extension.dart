import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

extension BaseContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  CustomColorScheme get customColorScheme => theme.extension<CustomColorScheme>()!;
}
