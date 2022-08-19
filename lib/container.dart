import 'package:flutter/material.dart';

import './answer.dart';

class ContainerWidgetTest extends StatefulWidget {
  const ContainerWidgetTest({Key? key}) : super(key: key);

  @override
  State<ContainerWidgetTest> createState() => _ContainerState();
}

class _ContainerState extends State<ContainerWidgetTest> {
  int _result = 0; //an int? that could be null at some point

  int get getResult {
    //A Getter
    return _result;
  }

  void _setNumber() {
    if (_result < 3) {
      setState(() {
        _result++;
      });
    }
  }

  void _resetNumber() {
    setState(() {
      _result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10, left: 20),
          padding: const EdgeInsets.all(20),
          child: Text(
            '$_result',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green)),
          onPressed: _setNumber,
          child: const Text('Increase by 1'),
        ),
        _result < 3
            ? AnswerWidget(callbackSample: _setNumber)
            : Column(
                children: [
                  const Text('Limit reached, try the blue one down there'),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.orange,
                    ),
                    onPressed: _resetNumber,
                    child: const Text('Reset counter'),
                  ),
                ],
              )
      ],
    );
  }
}
