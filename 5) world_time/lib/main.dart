
import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/change_location.dart';

void main() => runApp(MaterialApp(
 // home: Home(),
 initialRoute: '/home',
  routes: {
    '/' : (context)=>Loading(),
    '/home': (context)=> Home(),
    '/location' : (context) => ChooseLocation(),
  },
));