import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                // ! SET THE IMAGE
                backgroundImage: AssetImage('assets/maxresdefault.jpg'),
              ),
              Text(
                'Ravi Pabari',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SansPro',
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+91 9773226497',
                        style: TextStyle(
                          fontFamily: 'SansPro',
                          fontSize: 20,
                          color: Colors.teal[900],
                        ),
                      ),
                      subtitle: Text('Phone Number'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text('Call'),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text('Message'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'thakkarravi76@gmail.com',
                    style: TextStyle(
                      fontFamily: 'SansPro',
                      fontSize: 20,
                      color: Colors.teal[900],
                    ),
                  ),
                  subtitle: Text('Email-id'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.album,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '1989 Delux Album',
                        style: TextStyle(
                           color : Colors.teal,
                        ),
                      ),
                      subtitle: Text(
                          'Music by Taylor Swift. Lyrics by Taylor Swift.'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('BUY ALBUM'),
                          onPressed: () {/* ... */},
                        ),
                        FlatButton(
                          child: const Text('LISTEN'),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
