import 'package:bop/theme/theme.dart';
import 'package:flutter/material.dart';

class BopApp extends StatelessWidget {
  const BopApp({
    super.key,
    this.home,
    this.debugShowCheckedModeBanner = true,
    this.title = 'Bop',
  });

  final Widget? home;
  final bool debugShowCheckedModeBanner;
  final String title;

  @override
  Widget build(BuildContext context) {
    const bopTheme = BopTheme();
    return MaterialApp(
      title: title,
      theme: bopTheme.toThemeData(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      home: home,
    );
  }
}
