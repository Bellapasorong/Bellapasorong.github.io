import 'package:flutter/material.dart';
import 'package:posttest4_1915016151/LandingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyLanding(),
    );
  }
}
