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
          style: const TextStyle(fontSize: 15),
          textAlign: TextAlign.right,
        ),
        const ContainerWidgetTest(),
      ],
    );
  }
}
