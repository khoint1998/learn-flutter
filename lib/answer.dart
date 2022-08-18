import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({Key? key, required this.callbackSample})
      : super(key: key);

  final VoidCallback callbackSample;

  @override
  Widget build(BuildContext context) {
    var seedData = [
      {'name': 'Khoi', 'age': 14},
      {'name': 'Kevin', 'age': 25},
      {
        'name': 'Ted',
        'answer': [55, 2, 21]
      },
    ];

    return Column(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
            backgroundColor: const Color.fromARGB(99, 199, 55, 127),
          ),
          onPressed: callbackSample,
          child: Text(
              '${seedData[1]['name'] as String} is the same func like the above button'),
        ),
        ...seedData
            .map((question) => Text(question['name'] as String))
            .toList(),
        ...(seedData[2]['answer'] as List<int>)
            .map((number) => Text(number.toString()))
            .toList(),
      ],
    );
  }
}
