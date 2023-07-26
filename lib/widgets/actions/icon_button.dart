import 'package:bop/tokens/spacing.dart';
import 'package:flutter/material.dart';

class BopIconButton extends StatelessWidget {
  const BopIconButton({
    Key? key,
    this.child,
    this.onPressed,
  }) : super(key: key);

  final Widget? child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final child = this.child;
    return SizedBox(
      height: BopSpacing.x15,
      width: BopSpacing.x15,
      child: FloatingActionButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BopSpacing.cornerRadius),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        child: child != null
            ? IconTheme(
                data: const IconThemeData(
                  fill: 0,
                  weight: 400,
                  grade: 0,
                  opticalSize: BopSpacing.x10,
                  size: BopSpacing.x10,
                ),
                child: child,
              )
            : null,
      ),
    );
  }
}
