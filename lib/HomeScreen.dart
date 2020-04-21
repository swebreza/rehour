import 'package:flutter/material.dart';
import './inputValues.dart';
import 'package:intl/intl.dart';
// import 'package:rehour/UserInput.dart';

class HomeScreen extends StatelessWidget {
  
  final List<InputValues> _values;
  HomeScreen(this._values);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: SingleChildScrollView(
              child: GridView.count(
                primary: false,
            crossAxisCount: 2,
            children: _values.map(
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
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
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
                              DateFormat.yMMMEd().format(tx.date),
                              style: TextStyle(
                                fontSize: 10,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          )
                        ],
                      )
                      
                    ],
                  ),
                );
              },
            ).toList()),
      ),
    );
       
  }
}
// SizedBox(
//             height: 200.0,

