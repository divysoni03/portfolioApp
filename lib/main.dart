import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PortfolioApp(),
    );
  }
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(234, 255, 253, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(23, 26, 33, 1),
        title: const Text(
          'PortFolio',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 27,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 590,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(146, 188, 234, .6),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/profile-pic.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'I\'m Divy Soni',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '18 | Beginner Programmer | Front-end Dev | Flutter Dev',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'rubik',
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        launchUrlString("https://github.com/divysoni03");
                      },
                      style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 26, vertical: 16)),
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromRGBO(26, 101, 158, .85)),
                      ),
                      child: const Text(
                        'GitHub',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        launchUrlString(
                            "https://www.linkedin.com/in/divysoni03/");
                      },
                      style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 26, vertical: 16)),
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromRGBO(26, 101, 158, .85)),
                      ),
                      child: const Text(
                        "Linkedin",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        launchUrlString("mailto:divysoni303@gmail.com");
                      },
                      style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 26, vertical: 16)),
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromRGBO(26, 101, 158, .85)),
                      ),
                      child: const Text(
                        "Gmail",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
