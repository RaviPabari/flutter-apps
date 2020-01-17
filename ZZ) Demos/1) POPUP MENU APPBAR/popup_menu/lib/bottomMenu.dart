import 'package:flutter/material.dart';

class Model{
  mainBottomSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _createTile(context, 'Message', Icons.message, action1),
            _createTile(context, 'Take Photo', Icons.photo_camera, action2),
            _createTile(context, 'My Images', Icons.photo_library, action3),
          ],
        ); 
      }
    );
  }
  ListTile _createTile(BuildContext context, String name, IconData icon, Function action){
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
      onTap:() {
        Navigator.pop(context);
        action();
      },
    );
  }

  void action1(){
    print('action 1');
  }
  void action3(){
    print('action 3');
  }
  void action2(){
    print('action 2');
  }

}