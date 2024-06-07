import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: portfolioApp(),
    );
  }
}

class portfolioApp extends StatelessWidget {
  portfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white70,
        title: const Text(
          'Divy Soni',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'rubik',
            fontSize: 35,
          ),
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/profile-pic.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'I\'m Divy Soni',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '18 | Beginner Programmer | Front-end Dev | Flutter Dev',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
