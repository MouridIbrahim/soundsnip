import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  // Primary colors (brand colors)
  static const Color primaryColor = Color(0xFFE92932);
  static const Color secondaryColor = Color(0xFF181111); // Nice blue

  // Text colors
  static const Color textColor = Color.fromRGBO(240, 240, 240, 1);
  static const Color lightText = Color(0xFF9A8284);
  static const Color tirthColor = Color(0xFF221919);
  static const Color fourthColor = Color(0xFF382929);
}

ThemeData primaryTheme = ThemeData(
  //seed
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),

  //scaffold color
  scaffoldBackgroundColor: AppColors.secondaryColor,

  //AppBar theme
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.secondaryColor,
    foregroundColor: AppColors.textColor,
    centerTitle: true,
  ),

  //text theme
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.robotoCondensed(
      color: AppColors.textColor,
      fontSize: 16,
      letterSpacing: 1,
    ),

    headlineMedium: GoogleFonts.robotoCondensed(
      color: AppColors.textColor,
      fontSize: 17,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    ),
    titleMedium: GoogleFonts.robotoCondensed(
      color: AppColors.lightText,
      fontSize: 17,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    ),
  ),

  cardTheme: CardThemeData(color: AppColors.secondaryColor),
);
