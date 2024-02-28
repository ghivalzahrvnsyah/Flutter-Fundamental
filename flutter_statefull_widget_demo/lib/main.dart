import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Kelas MyApp yang akan digunakan oleh main
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

/// Kelas State yang akan digunakan oleh MyApp
class _MyAppState extends State<MyApp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Statefull Widget Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(number.toString(), style: TextStyle(fontSize: 20 + number.toDouble()),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: pushButton,
                  child: Text('Tambah Bilangan'),
                ),
                ElevatedButton(
                  onPressed: resetButton,
                  child: Text('Reset'),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }

  void pushButton() {

    /// setState adalah method yang digunakan untuk mengubah state dari widget
    /// dan akan membangkitkan kembali build method
    setState(() {
      number++;
    });
  }

  void resetButton() {
    setState(() {
      number = 0;
    });
  }
}
