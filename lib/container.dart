import 'package:flutter/material.dart';

class ContainerWidgetTest extends StatefulWidget {
  const ContainerWidgetTest({Key? key}) : super(key: key);

  @override
  State<ContainerWidgetTest> createState() => _ContainerState();
}

class _ContainerState extends State<ContainerWidgetTest> {
  int _result = 0;

  void _setNumber() {
    setState(() {
      _result++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text('$_result'),
    );
  }
}
