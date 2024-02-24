import 'package:flutter/material.dart';

class learningletters extends StatefulWidget {
  const learningletters({super.key});

  @override
  State<learningletters> createState() => _learninglettersState();
}

class _learninglettersState extends State<learningletters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Stack(
        alignment: Alignment.topCenter,

          children:[
              Image.asset('assets/images/background.png', fit: BoxFit.cover),
              Image.asset("assets/images/board.png")
          ]
        )
    );
  }
}
