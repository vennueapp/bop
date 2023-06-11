import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class BopTheme extends ThemeExtension<BopTheme> {
  const BopTheme({
    this.primaryColor = const Color(0xFF7B5800),
    this.secondaryColor = const Color(0xFF6C5C3F),
    this.tertiaryColor = const Color(0xFF4C6545),
    this.neutralColor = const Color(0xFF635E57),
  });

  final Color primaryColor;
  final Color secondaryColor;
  final Color tertiaryColor;
  final Color neutralColor;

  ThemeData toThemeData() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFFFFC23C),
      brightness: Brightness.dark,
    );
    return _base(colorScheme);
  }

  @override
  ThemeExtension<BopTheme> copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? tertiaryColor,
    Color? neutralColor,
  }) {
    return BopTheme(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      tertiaryColor: tertiaryColor ?? this.tertiaryColor,
      neutralColor: neutralColor ?? this.neutralColor,
    );
  }

  @override
  ThemeExtension<BopTheme> lerp(
    covariant ThemeExtension<BopTheme>? other,
    double t,
  ) {
    if (other is! BopTheme) {
      return this;
    }
    return BopTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      tertiaryColor: Color.lerp(tertiaryColor, other.tertiaryColor, t)!,
      neutralColor: Color.lerp(neutralColor, other.neutralColor, t)!,
    );
  }

  ThemeData _base(final ColorScheme colorScheme) {
    final displayTextTheme = GoogleFonts.dmSerifDisplayTextTheme(
      ThemeData.dark().textTheme,
    );
    final bodyTextTheme = GoogleFonts.atkinsonHyperlegibleTextTheme(
      ThemeData.dark().textTheme,
    );

    final textTheme = bodyTextTheme.copyWith(
      displayLarge: displayTextTheme.displayLarge,
      displayMedium: displayTextTheme.displayMedium,
      displaySmall: displayTextTheme.displaySmall,
    );

    return ThemeData(
      useMaterial3: true,
      extensions: [this],
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.background,
      textTheme: textTheme,
      splashFactory: InkSparkle.splashFactory,
    );
  }
}
