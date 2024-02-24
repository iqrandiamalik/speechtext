import 'package:flutter/material.dart';
import 'package:speechtext/learningletters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Articuland Adventures',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: learningletters()
    );
  }
}
