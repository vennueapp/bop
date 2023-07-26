import 'package:bop/theme/button_theme_data.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class BopButtonTheme extends StatelessWidget {
  const BopButtonTheme({
    Key? key,
    required this.data,
    required this.child,
  }) : super(key: key);

  final BopButtonThemeData data;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => data,
      child: child,
    );
  }

  static BopButtonThemeData of(BuildContext context) {
    return Provider.of(context);
  }
}
