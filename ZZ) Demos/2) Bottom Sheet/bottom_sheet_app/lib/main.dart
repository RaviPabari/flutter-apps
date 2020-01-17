import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String textName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],       title: Text('$textName'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Body'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _func(),
        child: Icon(Icons.add_to_photos),
      ),
    );
  }

  void _func() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                //bottomLeft: Radius.circular(30),
                //bottomRight: Radius.circular(30)
                )),
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Send Messagge'),
                  onTap: () => _selectItem('Send Message'),
                ),
                ListTile(
                  leading: Icon(Icons.photo_library),
                  title: Text('Add Images'),
                  onTap: () => _selectItem('Add Images'),
                ),
                ListTile(
                  leading: Icon(Icons.camera_alt),
                  title: Text('Camera'),
                  onTap: () => _selectItem('Camera'),
                ),
              ],
            ),
          );
        });
  }

  void _selectItem(String name) {
    Navigator.pop(context);
    setState(() {
      textName = name;
    });
  }
}
