import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /// method pop digunakan untuk kembali ke halaman sebelumnya
            Navigator.pop(context);
          },
          child: Text("Back to main page"),
        ),
      ),
    );
  }
}
