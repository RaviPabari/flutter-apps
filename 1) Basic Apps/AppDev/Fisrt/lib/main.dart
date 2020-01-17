import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Is Love'),
        centerTitle: true,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.asset('assets/tsparis.jpg')
          ),
          Expanded(
            flex: 1,
          child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
          child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.orangeAccent,
              child: Text('3'),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('XD'),
      ),
      );
  }
}