import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(68, 138, 255, .5),
            centerTitle: true,
            title: Text(
              "Divy Soni",
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.white,
                  fontFamily: 'rubik',
                  fontWeight: FontWeight.w900),
            ),
          ),
          body: Center(
            child: Text(
              value.toString(),
              style: const TextStyle(fontSize: 40.0),
            ),
          ),
          floatingActionButton: Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    value++;
                    setState(() {});
                  },
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    value--;
                    setState(() {});
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          )),
    );
  }
}
