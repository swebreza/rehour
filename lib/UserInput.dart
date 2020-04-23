import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final Function addTx;
  final topicInput = TextEditingController();
  final commentInput = TextEditingController();


  UserInput(this.addTx);


  void submitData() {
    final enteredTopic = topicInput.text;
    final enteredComment = commentInput.text;

    if (enteredTopic.isEmpty || enteredTopic == null) {
      AlertDialog(actions: <Widget>[
        Text("Please enter Beautyfull Thoughts")
      ],);
      return;
    } 

    addTx(
      enteredTopic,
      enteredComment,
    );
  }

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
            onSubmitted: (_) => submitData(),
          ),


          TextField(
            maxLength: 125,
            autofocus: true,
            decoration: InputDecoration(
              labelText: 'Your thoughts',
            ),
            controller: commentInput,
            onSubmitted: (_) => submitData(),
          ),

          
          FlatButton(
            child: Text("Add To List"),
            textColor: Colors.pink,
            splashColor: Colors.yellow,
            hoverColor: Colors.yellowAccent,
            onPressed: submitData,
          )
        ]),
      ),
    );
  }
}
