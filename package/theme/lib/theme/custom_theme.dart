import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class CustomTheme {
  static ThemeData get dark => _buildTheme(true);

  static ThemeData get light => _buildTheme(false);

  static ThemeData _buildTheme(bool isDark) {
    ThemeData data;

    if (isDark) {
      data = ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorThemes.dark,
        extensions: [
          ColorCustoms.dark,
        ],
      );
    } else {
      data = ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorThemes.light,
        extensions: [
          ColorCustoms.light,
        ],
      );
    }

    return data.copyWith(
      textTheme: CustomTextTheme(
        colorScheme: data.colorScheme,
      ),
      inputDecorationTheme: CustomInputDecorationTheme(
        colorScheme: data.colorScheme,
      ),
    );
  }
}
