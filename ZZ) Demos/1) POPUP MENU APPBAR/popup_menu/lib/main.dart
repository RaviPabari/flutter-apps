import 'package:flutter/material.dart';
import 'package:popup_menu/bottomMenu.dart';
import 'package:popup_menu/menu.dart';

void main()=> runApp(MaterialApp(
  home: MyApp(),
));


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Model model = new Model();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POPUP MENU'),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context){
              return Menu.choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }
              ).toList();
            },
          )
        ],
      ),
        
      body: Center(
        child : Text('This is the body'),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          setState(() {
            model.mainBottomSheet(context);
          });
        },
        child: Icon(
          Icons.menu,
        ),
      ),

    );
  }
  void choiceAction(String choice){
    if(choice == Menu.Settings){
      print('Settings');
    }
    if(choice == Menu.Subscribe){
      print('Rate Our App');
    }
    if(choice == Menu.Logout){
      print('LogOut'); 
    }
  }
}

/* class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Model model = new Model();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:()=> model.mainBottomSheet(context),
        child: Icon(Icons.add),
      ),
    );
  }
} */