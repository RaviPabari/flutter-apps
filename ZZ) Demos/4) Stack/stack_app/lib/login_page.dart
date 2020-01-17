import 'package:flutter/material.dart';
//import 'package:stack_app/about_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/image1.jpg'), fit: BoxFit.fill),
            ),
          ),
          Align(
            child: Card(
              margin: EdgeInsets.all(30),
              color: Colors.lightGreenAccent,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ),
            alignment: Alignment(0, -0.6),
          ),
          Align(
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.perm_identity,
                ),
                title: Text('Login Id'),
              ),
            ),
            alignment: Alignment(0, 0.2),
          ),
          Align(
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.lock_outline,
                ),
                title: Text('Password'),
              ),
            ),
            alignment: Alignment(0, 0.4),
          ),
        ],
      ),
    );
  }
}
