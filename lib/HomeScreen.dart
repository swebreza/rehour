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
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                    padding: EdgeInsets.only(
                      bottom: 2,
                      left: 50,
                      right: 50,
                      top: 2,
                    ),
                    margin: EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      tx.topic,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 25, bottom: 80),
                        child: Text(tx.comment),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Text(
                          "Date:- " +
                              tx.date.day.toString() +
                              "/" +
                              tx.date.month.toString() +
                              "/" +
                              tx.date.year.toString(),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ).toList());
  }
}
