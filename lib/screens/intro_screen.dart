// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app/shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sam Fitness Center')),
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/beach.jpg'), fit: BoxFit.cover)),
          child: Center(
              child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white70,
                  ),
                  child: Text('I\'m Samuel, this is \nMy favorite Place',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        shadows: [
                          Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 2.0,
                              color: Colors.grey)
                        ],
                      ))))),
    );
  }
}

