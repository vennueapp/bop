import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BopButton extends StatelessWidget {
  const BopButton({
    super.key,
    this.leading,
    this.content,
    this.trailing,
    this.onPressed,
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
        padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
        ),
      ),
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 60,
        ),
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _BopBoxAccessories(
              leading: leading,
              trailing: trailing,
            ),
            if (content != null)
              AutoSizeText(
                content,
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 1,
                presetFontSizes: [
                  Theme.of(context).textTheme.bodyLarge!.fontSize!,
                  Theme.of(context).textTheme.bodyMedium!.fontSize!,
                  Theme.of(context).textTheme.bodySmall!.fontSize!,
                ],
                group: textAutoSizeGroup,
              ),
            if (leading != null || trailing != null) const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class _BopBoxAccessories extends StatelessWidget {
  const _BopBoxAccessories({
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
        size: 20,
        opticalSize: 20,
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
