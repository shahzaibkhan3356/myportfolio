import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  // Heading Font (Bold)
  static TextStyle headingStyle({
    double fontSize = 24,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.bold,
  }) =>
      GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );

  // Title Font (Medium)
  static TextStyle titleStyle({
    double fontSize = 20,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.w600,
  }) =>
      GoogleFonts.roboto(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );

  // Body Font (Regular)
  static TextStyle bodyStyle({
    double fontSize = 16,
    Color color = Colors.black87,
    FontWeight fontWeight = FontWeight.normal,
  }) =>
      GoogleFonts.openSans(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );

  // Small Font
  static TextStyle smallStyle({
    double fontSize = 12,
    Color color = Colors.grey,
    FontWeight fontWeight = FontWeight.w400,
  }) =>
      GoogleFonts.inter(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
}
// Usage example: