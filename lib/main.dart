import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightBlue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;
  void diceFace() {
    leftDiceNo = Random().nextInt(6) + 1;
    rightDiceNo = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  diceFace();
                });
              },
              child: Image.asset('images/dice$leftDiceNo.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  diceFace();
                });
              },
              child: Image.asset('images/dice$rightDiceNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
