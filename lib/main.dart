import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var leftdicenumber = '2';
  var rightdicenumber = '2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {


                  Random random = new Random();
                  int randomNumber = random.nextInt(6) + 1;
                  leftdicenumber = randomNumber.toString();
                });
              },
              child: Image.asset('assets/dice$leftdicenumber.png'),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {


                  Random random = new Random();
                  int randomNumber = random.nextInt(6) + 1;
                  rightdicenumber = randomNumber.toString();
                });
              },
              child: Image.asset('assets/dice$leftdicenumber.png'),
            ),
          )
        ],
        ),
      ),
      backgroundColor: Colors.blue[600],
    );
  }
}