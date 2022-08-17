import 'package:flutter/material.dart';

import './container.dart';

class Question extends StatelessWidget {
  const Question({Key? key, required this.testing}) : super(key: key);

  final String testing;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Hello world'),
        Text(
          testing,
          style: const TextStyle(fontSize: 28),
          textAlign: TextAlign.end,
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {},
          child: const Text('Click me'),
        ),
        const ContainerWidgetTest(),
      ],
    );
  }
}
