import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    print('this will run only once');
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location'),
            ),
            FlatButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Loading Screen'),
            ),
          ],
        ),
      ),
    );
  }
}