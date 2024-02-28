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
  List<Widget> listWidgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View Demo'),
          backgroundColor: Colors.yellow,
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        listWidgets.add(Text(
                          'Data ke-${listWidgets.length + 1}',
                          style: const TextStyle(fontSize: 35),
                        ));
                      });
                    },
                    child: const Text(
                      'Tambah Data',
                      style: TextStyle(color: Colors.black),
                    )),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        listWidgets.removeLast();
                      });
                    },
                    child: const Text(
                      'Hapus Data',
                      style: TextStyle(color: Colors.red),
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: listWidgets,
            )
          ],
        ),
      ),
    );
  }
}
