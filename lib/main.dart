import 'package:flutter/material.dart';
import 'package:language_learining_app/screens/home_screen.dart';

void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
