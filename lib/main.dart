import 'package:flutter/cupertino.dart';
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
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonClick = 1;
  int rightButtonClick = 1;

  void buttonClick() {
    setState(() {
      leftButtonClick = Random().nextInt(6) + 1;
      rightButtonClick = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () =>  buttonClick(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset("images/dice$leftButtonClick.png"),
              ),
            ),
          ),
          Expanded(child: TextButton(
            onPressed: () => buttonClick(),

            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("images/dice$rightButtonClick.png"),
            ),
          ),
          ),
        ],
      ),
    );
  }
}

