import 'package:flutter/material.dart';
import 'package:local_users/ui/splashscreen.dart';
import 'package:local_users/ui/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  var appName = "Local Users";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Local Storage',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: new SplashScreen(appName: appName),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) =>
            new HomeScreen(appName: appName)
      },
    );
  }
}
