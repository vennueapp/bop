import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BopHeading extends StatelessWidget {
  const BopHeading(
    this.text, {
    super.key,
    this.maxLines,
  });

  final String text;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final maxLines = this.maxLines;

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: maxLines == null
          ? Text(
              text,
              style: Theme.of(context).textTheme.displayMedium,
              textAlign: TextAlign.start,
            )
          : AutoSizeText(
              text,
              style: Theme.of(context).textTheme.displayMedium,
              textAlign: TextAlign.start,
            ),
    );
  }
}
