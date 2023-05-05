import 'package:dribble_design_marketplace/Core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData instance = ThemeData(
    fontFamily: "Satoshi",
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 40,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
      headline2: TextStyle(
        fontSize: 24,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
      headline3: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
      headline4: TextStyle(
        fontSize: 14,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
      ),
      bodyText2: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      button: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    ),
    textSelectionTheme: textSelectionTheme,
    inputDecorationTheme: getInputDecorationTheme,
    elevatedButtonTheme: elevatedButtonTheme,
  );

  static InputDecorationTheme get getInputDecorationTheme {
    return const InputDecorationTheme(
        focusColor: kPrimaryColor,
        labelStyle: TextStyle(color: kPrimaryColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kDefaultBackground,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: kCaptionColor),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        contentPadding: EdgeInsets.zero,
        hintStyle: TextStyle(fontSize: 12, color: kCaptionColor));
  }

  static ElevatedButtonThemeData get elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: getMaterialProperty<double>(0.0),
        backgroundColor: getMaterialProperty<Color>(kButtonBackground),
        shape: getMaterialProperty<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }

  static TextSelectionThemeData get textSelectionTheme {
    return const TextSelectionThemeData(
      cursorColor: kPrimaryColor,
      selectionHandleColor: kPrimaryColor,
    );
  }

  static MaterialStateProperty<T> getMaterialProperty<T>(dynamic data) {
    return MaterialStateProperty.all<T>(data);
  }
}
