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
          title: Text("Spacer Widget Demo"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 80,
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 2),
                  Container(
                    color: Colors.orange,
                    width: 80,
                    height: 80,
                  ),
                  Spacer(flex: 1),
                  Container(
                    color: Colors.purple,
                    width: 80,
                    height: 80,
                  ),
                  Spacer(flex: 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 1),
                  Container(
                    color: Colors.teal,
                    width: 80,
                    height: 80,
                  ),
                  Spacer(flex: 2),
                  Container(
                    color: Colors.cyan,
                    width: 80,
                    height: 80,
                  ),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                children: [
                  Spacer(flex: 2),
                  Container(
                    color: Colors.green,
                    width: 80,
                    height: 80,
                  ),
                  Spacer(flex: 1),
                  Container(
                    color: Colors.yellow,
                    width: 80,
                    height: 80,
                  ),
                  Spacer(flex: 2),
                ],
              ),
              Container(
                color: Colors.indigo,
                width: 80,
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
