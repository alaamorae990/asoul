import 'package:flutter/material.dart';
const Color primary = Color(0xff70184a);
const Color second2 = Color(0xffffca08);
const Color second = Color(0xff9a0039);

const Color pageBackgroundColor = Color(0xFF5E6476);
const Color primaryTextColor = Colors.white;
const Color dividerColor = Colors.white54;
const Color dividerColor2 = Colors.white70;
const Color menuBackgroundColor = Color(0xFF365069);

const Color clockBG = Color(0xFF444974);
const Color clockOutline = Color(0xFFEAECFF);
const Color bluetitle=Colors.blue;
const Color minHandStatColor = Color(0xFF748EF6);
const Color minHandEndColor = Color(0xFF77DDFF);

const Color hourHandStatColor = Color(0xFFC279FB);
const Color hourHandEndColor = Color(0xFFEA74AB);
class Styles {
  static Color? secHandColor = Colors.orange[300];
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          //0A1931  // white yellow 0xFFFCF8EC
          isDarkTheme ? const Color(0xFF00001a) : const Color(0xFFFFFFFF),
      primaryColor: Colors.blue,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary:
                isDarkTheme ? const Color(0xFF1a1f3c) : const Color(0xFFE8FDFD),
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor:
          isDarkTheme ? const Color(0xFF0a0d2c) : const Color(0xFFF2FDFD),
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme
              ? const ColorScheme.dark()
              : const ColorScheme.light()),
    );
  }
}
class GradientColors {
  final List<Color> colors;
  GradientColors(this.colors);

  static List<Color> sky = [Color(0xFF6448FE), Color(0xFF5FC6FF)];
  static List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];
  static List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
  static List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];
  static List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];
}

class GradientTemplate {
  static List<GradientColors> gradientTemplate = [
    GradientColors(GradientColors.sky),
    GradientColors(GradientColors.sunset),
    GradientColors(GradientColors.sea),
    GradientColors(GradientColors.mango),
    GradientColors(GradientColors.fire),
  ];
}
