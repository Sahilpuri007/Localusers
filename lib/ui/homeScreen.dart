import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  final appName;

  HomeScreen({Key key, this.appName}) : super(key: key);

  @override
  _HomeScreenState createState() => new _HomeScreenState(appName: appName);
}

class _HomeScreenState extends State<HomeScreen> {
  var appName;

  _HomeScreenState({Key key, this.appName});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(appName),
      ),
      body: new Column(children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: new Center(
            child: new Text(
              'Welcome to Home.!',
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
