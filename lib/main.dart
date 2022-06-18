import 'package:flutter/material.dart';
import 'screens/KarakterPage.dart';
import 'LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WikiGenshin',
      theme: ThemeData(
        primaryColor: Color(0xFF001359),
      ),
      home: buttonScreen(),
    );
  }
}
