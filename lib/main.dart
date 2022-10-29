import 'package:flutter/material.dart';
import 'package:jokenpo_game/pages/error.dart';
import 'package:jokenpo_game/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Color.fromRGBO(200, 82, 96, 1),
      ),
      home: HomePage(),
    );
  }
}
