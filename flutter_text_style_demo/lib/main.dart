import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Syle Demo'),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Text(
            'ini Adalah text',
            style: TextStyle(
                fontFamily: "Comfortaa",
                fontWeight: FontWeight.bold,
                color: Colors.teal,
                fontSize: 30),
          ),
        ),
      ),
    );
  }
}
