import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'spring_button.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> diceList = [
    'dice1.png',
    'dice2.png',
    'dice3.png',
    'dice4.png',
    'dice5.png',
    'dice6.png',
  ];
  var picker1 = 'dice1.png';
  var picker2 = 'dice2.png';

  void pickADiceRandomly1() {
    var random = new Random();
    setState(() {
      var element1 = diceList[random.nextInt(diceList.length)];
      var element2 = diceList[random.nextInt(diceList.length)];
      picker1 = element1;
      picker2 = element2;
    });
  }

  Widget row(String text, Color color) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12.5,
            ),
          ),
        ),
      ),
    );
  }
  // void pickADiceRandomly2(){
  //  var random = new Random();
  //  //var element1 = diceList[random.nextInt(diceList.length)];
  //  var element2 = diceList[random.nextInt(diceList.length)];
  // // picker1 = element1;
  //  picker2 = element2;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'The Dice Simulator',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          pickADiceRandomly1();
                        });
                      },
                      child: Image.asset('images/$picker1')),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          pickADiceRandomly1();
                        });
                      },
                      child: Image.asset('images/$picker2')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
