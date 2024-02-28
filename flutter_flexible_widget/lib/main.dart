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
        title: Text("Flexible Widget Demo"),
        backgroundColor: Colors.blueGrey,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      body: Row(children: [
        /// Flexible properti untuk mengatur ukuran widget secara fleksibel 
        /// sesuai dengan flex yang diberikan
        Flexible(
          flex: 1,
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(color: Colors.cyan),
              ),
              Flexible(
                flex: 1,
                child: Container(color: Colors.lime),
              ),
              Flexible(
                flex: 2,
                child: Container(color: Colors.orange),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
            children: [
              Flexible(
                
                flex: 1,
                child: Container(color: Colors.teal),
              ),
              Flexible(
                flex: 2,
                child: Container(color: Colors.yellow),
              ),
              Flexible(
                flex: 1,
                child: Container(color: Colors.purple),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(color: Colors.purpleAccent),
              ),
              Flexible(
                flex: 2,
                child: Container(color: Colors.grey),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
