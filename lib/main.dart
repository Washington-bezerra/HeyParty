import 'package:flutter/material.dart';
import 'formularios/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple[600],
        secondaryHeaderColor: Colors.green[300],
        accentColor: Colors.deepPurpleAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepPurple[600],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Login(),
    );
  }
  
}
