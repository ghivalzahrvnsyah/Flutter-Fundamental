import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = 'Ini adalah text';

  void onPressedButton() {
    setState(() {
      message = 'Tombol telah ditekan';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Anonymous Method'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            ElevatedButton( 

                /// Anonymous Method
                // method yang hanya dipanggil sekali
                onPressed: () {
                  setState(() {
                    message = 'Tombol telah ditekan';
                  });
                },
                child: Text('Tekan Saya!'))
          ],
        ),
      ),
    ));
  }
}
