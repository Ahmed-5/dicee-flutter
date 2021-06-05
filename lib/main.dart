import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Container(
            child:Text(
              'Dicee',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 25.0,
              ),
            ),
            alignment: Alignment.center,
          ),
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
  int leftDice = 1;
  int rightDice = 1;

  void RollDices(){
    setState(() {
      leftDice = Random().nextInt(6)+1;
      rightDice = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: RollDices,
              child: Image.asset('images/dice$leftDice.png',),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: RollDices,
              child: Image.asset('images/dice$rightDice.png',),
            ),
          ),
        ],
      ),
    );
  }
}
