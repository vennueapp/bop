import 'package:flutter/material.dart';

import 'package:bop/bop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BopApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('bop'),
              titleTextStyle:
                  Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
            ),
            body: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const BopHeading('Some Buttons'),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: BopContent(
                          'This is some content in a box, it\'s long enough '
                          'to span multiple lines',
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: BopButton(
                          leading: const Icon(Icons.thumb_up_outlined),
                          content: 'Rated high',
                          trailing: const Icon(Icons.add_outlined),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: 4),
                      BopIconButton(
                        child: const Icon(Icons.arrow_forward_rounded),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: BopButton(
                          leading: const Icon(Icons.access_alarm_sharp),
                          content: 'Something',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
