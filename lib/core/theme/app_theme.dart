import 'package:flutter/material.dart';

/// Canonical app theme.
///
/// Use [AppTheme] in new code. The [Default_Theme] typedef at the bottom of
/// this file provides backward-compatible access for existing callers while
/// imports are being migrated.
class AppTheme {
  // ── Text Styles ─────────────────────────────────────────────────────────────
  static const primaryTextStyle = TextStyle(fontFamily: "Fjalla");
  static const secondoryTextStyle = TextStyle(fontFamily: "Gilroy");
  static const secondoryTextStyleMedium =
      TextStyle(fontFamily: "Gilroy", fontWeight: FontWeight.w700);
  static const tertiaryTextStyle = TextStyle(fontFamily: "CodePro");
  static const fontAwesomeRegularFont =
      TextStyle(fontFamily: "FontAwesome-Regular");
  static const fontAwesomeSolidFont =
      TextStyle(fontFamily: "FontAwesome-Solids");

  // ── Colors ──────────────────────────────────────────────────────────────────
  static const themeColor = Color(0xFF002B36); // Rich dark midnight teal-cyan

  static const primaryColor1 = Color(0xFFD8F3F8);     // Crisp icy-cyan white text/icons
  static const primaryColor2 = Color.fromARGB(255, 224, 244, 248);
  static const accentColor1 = Color(0xFF008B8B);      // Classic Midnight Cyan accent
  static const accentColor1light = Color(0xFF00B8D4); // Bright cyan highlight/hover
  static const accentColor2 = Color(0xFFFE385E);      // Secondary coral/red highlight
  static const successColor = Color(0xFF5EFF43);

  // ── Theme Data ───────────────────────────────────────────────────────────────
  ThemeData get defaultThemeData {
        const darkScheme = ColorScheme.dark(
      primary: accentColor1,
      secondary: accentColor1light,
      surface: themeColor,
      surfaceContainerHighest: Color(0xFF073B46),
      onPrimary: primaryColor1,
      onSecondary: primaryColor1,
      onSurface: primaryColor1,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: themeColor,
      dialogBackgroundColor: themeColor,
      primaryColorDark: accentColor1,
      fontFamily: 'Gilroy',
           primarySwatch: MaterialColor(
        accentColor1.value,
        {
          50: accentColor1.withValues(alpha: 0.1),
          100: accentColor1.withValues(alpha: 0.2),
          200: accentColor1.withValues(alpha: 0.3),
          300: accentColor1.withValues(alpha: 0.4),
          400: accentColor1.withValues(alpha: 0.5),
          500: accentColor1.withValues(alpha: 0.6),
          600: accentColor1.withValues(alpha: 0.7),
          700: accentColor1.withValues(alpha: 0.8),
          800: accentColor1.withValues(alpha: 0.9),
          900: accentColor1.withValues(alpha: 1.0),
        },
      ),

            colorScheme: darkScheme.copyWith(
        primary: accentColor1,
        secondary: accentColor1light,
      ),

      iconTheme: const IconThemeData(color: primaryColor1),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: WidgetStateProperty.all(accentColor1),
        interactive: true,
        radius: const Radius.circular(10),
        thickness: WidgetStateProperty.all(5),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: themeColor,
        foregroundColor: primaryColor1,
        surfaceTintColor: themeColor,
        iconTheme: IconThemeData(color: primaryColor1),
      ),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: accentColor2),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: accentColor2,
        selectionColor: accentColor2,
        selectionHandleColor: accentColor2,
      ),
      brightness: Brightness.dark,
      switchTheme: SwitchThemeData(
        thumbColor: const WidgetStatePropertyAll(primaryColor1),
        trackOutlineColor: WidgetStateProperty.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? accentColor1
                : accentColor2),
        trackColor: WidgetStateProperty.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? accentColor1
                : primaryColor2.withValues(alpha: 0.0)),
      ),
      searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(themeColor),
      ),
      popupMenuTheme: const PopupMenuThemeData(
        color: Color.fromARGB(255, 23, 18, 25),
        textStyle: TextStyle(color: primaryColor1),
      ),
      dropdownMenuTheme: const DropdownMenuThemeData(
        menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(themeColor),
        ),
        textStyle: TextStyle(color: primaryColor1),
      ),
      menuTheme: const MenuThemeData(
        style: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(themeColor),
        ),
      ),
      cardTheme: const CardThemeData(
        color: themeColor,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }
}

/// Backward-compat alias for [AppTheme].
/// Prefer importing from [core/theme/app_theme.dart] and using [AppTheme] directly.
// ignore: camel_case_types
typedef Default_Theme = AppTheme;
