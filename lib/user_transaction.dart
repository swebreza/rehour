import 'package:flutter/material.dart';

import './HomeScreen.dart';
import './UserInput.dart';
import './inputValues.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<InputValues> _values = [
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
  void addNewTransaction(String txtopic, String txcomment) {
    final newtx = InputValues(
      topic: txtopic,
      comment: txcomment,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _values.add(newtx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HomeScreen(_values),
        UserInput(addNewTransaction),
        
      ],
    );
  }
}
