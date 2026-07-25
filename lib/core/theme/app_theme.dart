import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final baseTextTheme = GoogleFonts.nunitoSansTextTheme();
    final literataTextTheme = GoogleFonts.literataTextTheme();

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        surface: AppColors.background,
        tertiary: AppColors.tertiary,
      ),
      scaffoldBackgroundColor: AppColors.background,
      textTheme: baseTextTheme.copyWith(
        displayLarge: literataTextTheme.displayLarge?.copyWith(color: AppColors.textPrimary),
        displayMedium: literataTextTheme.displayMedium?.copyWith(color: AppColors.textPrimary),
        displaySmall: literataTextTheme.displaySmall?.copyWith(color: AppColors.textPrimary),
        headlineLarge: literataTextTheme.headlineLarge?.copyWith(color: AppColors.textPrimary),
        headlineMedium: literataTextTheme.headlineMedium?.copyWith(color: AppColors.textPrimary),
        headlineSmall: literataTextTheme.headlineSmall?.copyWith(color: AppColors.textPrimary),
        bodyLarge: baseTextTheme.bodyLarge?.copyWith(height: 1.6, color: AppColors.textPrimary),
        bodyMedium: baseTextTheme.bodyMedium?.copyWith(height: 1.6, color: AppColors.textPrimary),
        bodySmall: baseTextTheme.bodySmall?.copyWith(height: 1.6, color: AppColors.textSecondary),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.background,
        elevation: 4, // Approximating soft shadow visually
        shadowColor: const Color(0x0F2E3230), // Extremely soft warm-gray shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.zero,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.background,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
      ),
    );
  }
}
