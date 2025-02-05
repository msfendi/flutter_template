import 'package:flutter/material.dart';

class PColor {
  // Singleton instance
  static final PColor _instance = PColor._internal();

  // Factory constructor returns the same instance
  factory PColor() => _instance;

  // Private constructor
  PColor._internal();

  // Define colors with default values
  Color primary = const Color(0xFF004EBF);
  Color secondary = const Color(0xFF1B4FB8);
  Color success = const Color(0xFF4BAC87);
  Color info = const Color(0xFF05BFDB);
  Color warning = const Color(0xFFFFD93D);
  Color danger = const Color(0xFFBE3D3D);
  Color disabled = const Color(0xFFDCDEE7);
  Color white = const Color(0xFFFFFFFF);
  Color main = const Color(0xFF2E3261);
  Color black = const Color(0xFF151316);
  // Color grey = const Color(0xff4F5262);
  Color grey = const Color(0xff8288A2);
  Color softGrey = const Color(0xff8F95B2);
  Color orange = const Color(0xffE8A01D);
  Color limeGreen = const Color(0xff4BAC87);
  Color brown = const Color(0xff66460D);

  // Method to update colors dynamically
  void updatePrimary(Color color) {
    primary = color;
  }
}