import 'package:flutter/material.dart';
import 'package:nutrify/screens/home_screen.dart';

void main() {
  runApp(Nutrify());
}

class Nutrify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
