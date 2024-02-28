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
        appBar:
            AppBar(title: const Text('ROW & COLUMN'), backgroundColor: Colors.cyan),
            body: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("TEXT 1"),
                Text("TEXT 2"),
                Text("TEXT 3"),
                Row(
                  children: <Widget> [
                    Text("TEXT 4"),
                    Text("TEXT 5"),
                    Text("TEXT 6"),
                  ],
                )
              ],
            ),
            
            
      ),
      
    );
  }
}
