import 'package:flutter/material.dart';
import './inputValues.dart';

class HomeScreen extends StatelessWidget {
  final List<InputValues> values = [
    InputValues(
      topic: 'apple',
      comment: 'allt.',
      date: DateTime.now(),
    ),
    InputValues(
      topic: 'ball',
      comment: 'all.',
      date: DateTime.now(),
    ),
    InputValues(
      topic: 'CAN',
      comment: 'all ',
      date: DateTime.now(),
    ),
    InputValues(
      topic: 'CANt ',
      comment: 'all ',
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: values.map(
          (tx) {
            return Card(
              elevation: 20,
              child: Row(
                children: <Widget>[
                  Card(
                    elevation: 20,
                    child: Text(tx.topic),
                  ),
                ],
              ),
            );
          },
        ).toList());
  }
}
