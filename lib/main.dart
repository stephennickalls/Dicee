import 'package:flutter/material.dart';
import 'dart:math';

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
  int diceImageLeft = 1;
  int diceImageRight = 1;

  void rollDice() {
    setState(() {
      diceImageRight = Random().nextInt(6) + 1;
      diceImageLeft = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDice();
              },
              child: Image.asset('images/dice$diceImageLeft.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDice();
              },
              child: Image.asset('images/dice$diceImageRight.png'),
            ),
          ),
        ],
      ),
    );
  }
}
