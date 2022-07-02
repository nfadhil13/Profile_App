import 'package:flutter/material.dart';

class AppTextTheme extends TextTheme {
  static const _font = "Poppins";
  const AppTextTheme()
      : super(
          labelMedium: const TextStyle(
            fontFamily: _font,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 14,
          ),
          headline1: const TextStyle(
            fontFamily: _font,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 32,
          ),
          headline2: const TextStyle(
            fontFamily: _font,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            fontSize: 28,
            letterSpacing: 0,
          ),
          headline3: const TextStyle(
            fontFamily: _font,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            letterSpacing: 0.01,
          ),
          headline6: const TextStyle(
            fontFamily: _font,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 12,
            letterSpacing: 0.12,
          ),
          button: const TextStyle(
            fontFamily: _font,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 16,
            letterSpacing: 1.25,
          ),
          subtitle1: const TextStyle(
            fontFamily: _font,
            fontWeight: FontWeight.w400,
            fontSize: 20,
            letterSpacing: 0.15,
          ),
          bodyText1: const TextStyle(
            fontFamily: _font,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            letterSpacing: 0.5,
          ),
          bodyText2: const TextStyle(
            fontFamily: _font,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            fontSize: 18,
            letterSpacing: 0.25,
          ),
          caption: const TextStyle(
            fontFamily: _font,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            fontSize: 14,
            letterSpacing: 0.01,
          ),
        );
}
