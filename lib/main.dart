import 'package:flutter/material.dart';
import 'package:rehour/user_transaction.dart';

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReHour'),
        backgroundColor: Colors.pink,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
        elevation: 20,
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.yellow,
      body: Container(
        child: UserTransactions(),
      ),
    );
  }
}
