import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_qr_reader_demo/scanner_result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ScanPage(),
    );
  }
}

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String scanResult = "";

  Future<void> scanQRCode() async {
    try {
      final result = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
        "Cancel",
        true,
        ScanMode.BARCODE,
      );

      if (!mounted || result == "-1") return;

      setState(() {
        scanResult = result;
      });

      if (scanResult.isNotEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScannerResult(scanResult: scanResult),
          ),
        );
      }
    } on PlatformException {
      scanResult = "Failed to get platform version";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("Scan Result: $scanResult"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await scanQRCode();
              },
              child: const Text("Scan Here"),
            ),
          ],
        ),
      ),
    );
  }
}
