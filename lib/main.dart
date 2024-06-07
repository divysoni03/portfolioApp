import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : Scaffold(
    appBar: AppBar(
      title: const Text('Divy Soni Portfolio'),
      centerTitle: true,
      backgroundColor: Colors.deepOrangeAccent,
    ),
    body: const Center(
      child: Text(
        'hello from divy !!! Its my portfolio application ',
        style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: /*FontWeight.w500*/ FontWeight.bold,letterSpacing: 2.0),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.deepOrangeAccent,
      child: const Icon(Icons.add),
    ),
  ),
));