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
          title: const Text("Allign & Stack Demo"),
          backgroundColor: Colors.brown,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        body: Stack(children: [
          Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(color: Colors.black),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(color: Colors.white),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.green,
            margin: const EdgeInsets.all(50),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.blueGrey,
            margin: const EdgeInsets.all(100),
          )
        ]),
      ),
    );
  }
}
