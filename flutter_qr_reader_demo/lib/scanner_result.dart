import 'package:flutter/material.dart';

class ScannerResult extends StatelessWidget {
  final String scanResult;
  const ScannerResult({super.key, required this.scanResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scanner Result"),
      ),
      body: Center(
        child: Text("Result : $scanResult"),
      ),
    );
  }
}
