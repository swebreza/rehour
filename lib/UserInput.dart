import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final Function addTx;
  final topicInput = TextEditingController();
  final commentInput = TextEditingController();
  UserInput(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(children: <Widget>[
          TextField(
            maxLength: 25,
            autofocus: true,
            decoration: InputDecoration(
              labelText: 'Topic of thoughts',
            ),
            controller: topicInput,
          ),
          TextField(
            maxLength: 125,
            autofocus: true,
            decoration: InputDecoration(
              labelText: 'Topic of thoughts',
            ),
            controller: commentInput,
          ),
          FlatButton(
            
            child: Text("Add To List"),
            textColor: Colors.pink,
            splashColor: Colors.yellow,
            hoverColor: Colors.yellowAccent,
            onPressed: () {
              addTx(
                topicInput.text,
                commentInput.text,
              );
            },
          )
        ]),
      ),
    );
  }
}
