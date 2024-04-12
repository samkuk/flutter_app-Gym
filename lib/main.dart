// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/bmi_screen.dart';
import 'package:flutter_app/screens/intro_screen.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  // const GlobeApp({super.key});
  const GlobeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      routes: {
        '/': (context) => IntroScreen(),
        '/bmi':(context) => BmiScreen(),
      },
      initialRoute: '/',
    );
  }
}
