import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

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
          title: const Text('QR Code Generator'),
        ),
        body: Center(
          child: QrImageView(
            version: QrVersions.auto,
            backgroundColor: Colors.white,  
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(10),
            size: 300,
            data: "https://www.linkedin.com/in/ghivalza-harviansyah/",
          ),
        ),
      ),
    );
  }
}
