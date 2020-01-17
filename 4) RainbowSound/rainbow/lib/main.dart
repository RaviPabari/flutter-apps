import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:rainbow/sound_class.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Temp(),
  ));
}

class Temp extends StatefulWidget {
  @override
  _TempState createState() => _TempState();
}

class _TempState extends State<Temp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.accents,
      body: SafeArea(
        child: Center(
          child: FlatButton(
            onPressed: (){
              print('It workerd');
              final player = AudioCache();
              player.play('assets/note1.wav');
            },
            
            child: Text('Click Meeee Dammmm'),
          ),
        ),
      ),
    );
  }
}