import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.black54,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
@override
_DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  var rightDiceNumber = 1; //this is the initial state of the dice
  var leftDiceNumber = 1;

  void changediceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1; //the rght and the left is mixt to make both change at any click
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //this is to make it fit into position
            child: FlatButton(
              child: Image.asset(
                  'images/dice$leftDiceNumber.png'), //a type of buten that cover an image
              onPressed: () {
                // the properties of the button when it is pressed
                changediceFace();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                changediceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}

