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
          title: Text("Image Widget"),
          backgroundColor: Colors.amber,
          shadowColor: Colors.black,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 500,
            color: Colors.black,
            padding: EdgeInsets.all(3),
            child: Image(
              image: AssetImage("assets/marsha_lockscreen.jpeg")
            ),
          ),
        ),
      ),
    );
  }
}
