import 'package:flutter/material.dart';
import './userInput.dart';
import './inputValues.dart';
import './HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReHour',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
  void _addNewTransaction(String txtopic, String txcomment) {
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

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: UserInput(_addNewTransaction),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReHour'),
        backgroundColor: Colors.pink,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () => _startAddNewTransaction,
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startAddNewTransaction,
        child: Icon(
          Icons.add,
        ),
        elevation: 20,
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.yellow,
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: HomeScreen(),
      ),
    );
  }
}
