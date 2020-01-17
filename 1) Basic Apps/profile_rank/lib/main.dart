import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
void main() => runApp(MaterialApp(
  home: FirstScreen(),
));

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int currentLevel = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      
      appBar: AppBar(
        title: Text('Profile Viewer'),
        centerTitle: true,
        backgroundColor: Colors.black54,
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            currentLevel+=1;
          });
        },
        child: Icon(
          //Icons.add_circle_outline,
          Icons.add,
        ),
        backgroundColor: Colors.grey[800],
      ),

      body:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/resizepanda.jpg'),
                radius: 60,
              ),
            ),
            Divider(
              height: 100,
              color: Colors.grey,
            ),
            Text(
              'Name',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Dragon Warrior',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amberAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Current Rank',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
              ),
            ),
            //SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/global.jpg',
                  width: 80,
                  height: 80,
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Steam Level',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$currentLevel',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amberAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            //
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //e900
                Icon(
                  MdiIcons.steam,
                  size: 40,
                ),
                SizedBox(width: 10),
                Text(
                  'Steam ID',
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
