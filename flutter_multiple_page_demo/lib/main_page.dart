import 'package:flutter/material.dart';
import 'package:flutter_multiple_page_demo/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /// method push digunakan untuk mengganti halaman baru
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
          child: Text("Go to second page"),
        ),
      ),
    );
  }
}
