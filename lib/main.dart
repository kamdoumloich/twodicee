import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Deux Dee - Ndole'),
          backgroundColor: Colors.green[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left_dice = 1;
  int right_dice = 1;

  void changeNumber() {
    setState(() {
      left_dice = 1 + Random().nextInt(6);
      right_dice = 1 + Random().nextInt(6);
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeNumber();
              },
              child: Image.asset('images/dice$left_dice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeNumber();
              },
              child: Image.asset('images/dice$right_dice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
