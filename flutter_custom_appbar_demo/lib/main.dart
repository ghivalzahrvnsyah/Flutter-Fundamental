import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          /// preferredSize digunakan untuk mengatur tinggi AppBar
          preferredSize: const Size.fromHeight(200), // tinggi AppBar
          child: AppBar(
            backgroundColor: Colors.lightBlue,
            // title: Text("Custome App Bar"),
            flexibleSpace:  Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Custom App Bar Demo",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Divider(
                      color: Colors.white,
                      thickness: 3,
                    ),
                  )
                ],
              ),
            ),
          ),
          
        ),
        body: Center(
          child: Text("Ini bagian body"),
        ),
      ),
    );
  }
}
