import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class Sound extends StatefulWidget {
  @override
  _SoundState createState() => _SoundState();
}

class _SoundState extends State<Sound> {

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FlatButton(
          onPressed: (){
            print('Hello');
          },
          child: Text('Click Me'),
        ),
      ),
    );
  }
}
