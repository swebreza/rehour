import 'package:flutter/material.dart';
// import './userInput.dart';
import './inputValues.dart';
import 'package:intl/intl.dart';
// import 'package:rehour/UserInput.dart';

class HomeScreen extends StatelessWidget {
  // final List<InputValues> _values;
  // HomeScreen(this._values);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: GridView.builder(
        semanticChildCount: 2,
        itemCount: 20,
        itemBuilder: (ctx, index) {
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
                    InputValues(
                      topic: '$index',
                      comment: null,
                      date: null,
                    ).topic,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 25, bottom: 80),
                      child: Text(InputValues(
                        comment: '$index',
                        date: null,
                        topic: null,
                      ).comment),
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
                        DateFormat.yMMMEd()
                            .format(InputValues(
                                    comment: null,
                                    topic: null,
                                    date: DateTime.now())
                                .date)
                            .toString(),
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
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 10.0,
        ),
      ),
    );
  }
}
