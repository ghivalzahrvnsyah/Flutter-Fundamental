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
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("latihan TextField"),
          backgroundColor: Colors.brown,
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.brown[50],
                    filled: true,
                    prefixIcon: const Icon(Icons.person),
                    labelText: "Nama Lengkap",
                    hintText: "Masukkan Nama Lengkap Anda",
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 12),
                    labelStyle:
                        const TextStyle(color: Colors.brown, fontSize: 16),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                controller: controller,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.brown[50],
                    filled: true,
                    prefixIcon: const Icon(Icons.password),
                    labelText: "Password",
                    hintText: "Masukkan Password disini",
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 12),
                    labelStyle:
                        const TextStyle(color: Colors.brown, fontSize: 24),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                // maxLength: 10, // untuk membuat batas maksimal inputan
                  obscureText: true, // untuk membuat inputan menjadi password
              ),
            ),
          ],
        ),
      ),
    );
  }
}
