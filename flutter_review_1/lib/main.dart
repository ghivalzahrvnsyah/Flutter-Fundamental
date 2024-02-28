import 'dart:math';

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
  Random random = Random();
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Review App 1"),
          backgroundColor: Color.fromARGB(255, random.nextInt(256),
              random.nextInt(256), random.nextInt(256)),
        ),
        body: Column(
          children: [
            AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: 50.1 + random.nextInt(150),
                height: 50.0 + random.nextInt(150),
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256))),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text("Press Me"))
          ],
        ),
      ),
    );
  }
}
