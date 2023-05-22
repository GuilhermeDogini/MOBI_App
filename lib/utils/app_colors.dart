import 'package:flutter/material.dart';

class AppColors {
  static const int _whitePrimaryValue = 0xFFF1F4FC;
  static const int _blacBluekPrimaryValue = 0xFF22222B;
  static const int _blackPrimaryValue = 0xFF28292D;
  static const int _yellowPrimaryValue = 0xFFFFEB3B;

  static const MaterialColor myCustomBlack = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      50: Color(0xFF28292D),
      100: Color(0xFF28292D),
      200: Color(0xFF28292D),
      300: Color(0xFF28292D),
      400: Color(0xFF28292D),
      500: Color(0xFF28292D),
      600: Color(0xFF28292D),
      700: Color(0xFF28292D),
      800: Color(0xFF28292D),
      900: Color(0xFF28292D),
    },
  );

  static const MaterialColor myCustomwhite = MaterialColor(
    _whitePrimaryValue,
    <int, Color>{
      50: Color(0xFFF1F4FC),
      100: Color(0xFFF1F4FC),
      200: Color(0xFFF1F4FC),
      300: Color(0xFFF1F4FC),
      400: Color(0xFFF1F4FC),
      500: Color(0xFFF1F4FC),
      600: Color(0xFFF1F4FC),
      700: Color(0xFFF1F4FC),
      800: Color(0xFFF1F4FC),
      900: Color(0xFFF1F4FC),
    },
  );

  static const MaterialColor myCustomBlackBlue = MaterialColor(
    _blacBluekPrimaryValue,
    <int, Color>{
      50: Color(0xFF22222B),
      100: Color(0xFF22222B),
      200: Color(0xFF22222B),
      300: Color(0xFF22222B),
      400: Color(0xFF22222B),
      500: Color(0xFF22222B),
      600: Color(0xFF22222B),
      700: Color(0xFF22222B),
      800: Color(0xFF22222B),
      900: Color(0xFF22222B),
    },
  );

  static const MaterialColor myCustomYellow = MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFEB3B),
      100: Color(0xFFFFEB3B),
      200: Color(0xFFFFEB3B),
      300: Color(0xFFFFEB3B),
      400: Color(0xFFFFEB3B),
      500: Color(0xFFFFEB3B),
      600: Color(0xFFFFEB3B),
      700: Color(0xFFFFEB3B),
      800: Color(0xFFFFEB3B),
      900: Color(0xFFFFEB3B),
    },
  );
}
