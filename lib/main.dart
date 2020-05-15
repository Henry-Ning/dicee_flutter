import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int leftDiceNum = 5;
  int rightDiceNum = 2;
  @override
  Widget build(BuildContext context) {
    rightDiceNum = 1;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNum = 3;
                  print('$leftDiceNum' );
                });
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Right');
              },
              child: Image.asset('images/dice$rightDiceNum.png'
              ),
            ),
          ),
        ],
      ),
    );
  }
}

