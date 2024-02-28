import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Widget Scaffold adalah sebuah widget yang memuat widget lainnya
      /// memiliki 2 bagian yaitu appBar dan body
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("My App Hello World!"),
        ),
        body: Center(
            child: Container(
                color: Colors.blue,
                width: 150,
                height: 70,
                child: Text(
                  "Hello Ini adalah aplikasi pertama saya di Flutter!",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
      ),
    );
  }
}
