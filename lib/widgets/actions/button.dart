import 'package:auto_size_text/auto_size_text.dart';
import 'package:bop/tokens/spacing.dart';
import 'package:flutter/material.dart';

class BopButton extends StatelessWidget {
  const BopButton({
    super.key,
    this.leading,
    this.content,
    this.trailing,
    this.onPressed,
    @Deprecated('Do not use until confirmed to be part of functionality')
    this.textAutoSizeGroup,
  });

  final Widget? leading;
  final String? content;
  final Widget? trailing;
  final void Function()? onPressed;
  final AutoSizeGroup? textAutoSizeGroup;

  @override
  Widget build(BuildContext context) {
    final content = this.content;
    return FilledButton.tonal(
      onPressed: onPressed,
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.all(BopSpacing.x0)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(BopSpacing.cornerRadius),
            ),
          ),
        ),
      ),
      child: Container(
        constraints: const BoxConstraints(minHeight: BopSpacing.x15),
        padding: const EdgeInsets.all(BopSpacing.x1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _BopButtonAccessories(
              leading: leading,
              trailing: trailing,
            ),
            AutoSizeText(
              content ?? '',
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 1,
              presetFontSizes: [
                Theme.of(context).textTheme.bodyLarge!.fontSize!,
                Theme.of(context).textTheme.bodyMedium!.fontSize!,
                Theme.of(context).textTheme.bodySmall!.fontSize!,
              ],
              group: textAutoSizeGroup,
            ),
          ],
        ),
      ),
    );
  }
}

class _BopButtonAccessories extends StatelessWidget {
  const _BopButtonAccessories({
    this.leading,
    this.trailing,
  });

  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final leading = this.leading;
    final trailing = this.trailing;
    return IconTheme(
      data: IconTheme.of(context).copyWith(
        size: BopSpacing.x5,
        opticalSize: BopSpacing.x5,
      ),
      child: Row(
        children: [
          if (leading != null) leading,
          const Spacer(),
          if (trailing != null) trailing,
        ],
      ),
    );
  }
}
