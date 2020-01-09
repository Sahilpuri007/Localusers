import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final appName;

  SplashScreen({Key key, this.appName}) : super(key: key);

  @override
  _SplashScreenState createState() => new _SplashScreenState(appName: appName);
}

class _SplashScreenState extends State<SplashScreen> {
  var appName;

  _SplashScreenState({Key key, this.appName});

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.all(20.0),
            child: Image.asset('images/users.png'),
          ),
          Text(
            appName,
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )),
    );
  }
}
