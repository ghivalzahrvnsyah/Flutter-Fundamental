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
          title: const Text("Font Features Demo"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Contoh 1",
                style: TextStyle(fontSize: 20, fontFamily: "Poppins"),
              ),
              Text(
                "Contoh 1 with Font Features",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontFeatures: [FontFeature.enable('smcp')]),
              ),
              Text(
                "Contoh 1/2 with Font Features",
                style: TextStyle(
                    fontSize: 20,
                    // fontFamily: "Cardo",
                    fontFeatures: [FontFeature.enable('smcp'), FontFeature.enable('frac')]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
