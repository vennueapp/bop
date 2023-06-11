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
              title: Text(
                'vennue',
                selectionColor: Theme.of(context).colorScheme.tertiary,
              ),
              backgroundColor: Theme.of(context).colorScheme.primary,
              titleTextStyle: Theme.of(context).textTheme.displaySmall,
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
                        child: BopContent('This is some content in a box'),
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
                      Expanded(
                        child: BopButton(
                          leading: const Icon(Icons.pin_drop_outlined),
                          content: 'Location over here',
                          onPressed: () {},
                        ),
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
