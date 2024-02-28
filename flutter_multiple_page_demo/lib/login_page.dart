import 'package:flutter/material.dart';
import 'package:flutter_multiple_page_demo/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /// method pusthReplacement digunakan untuk mengganti halaman dasar dengan halaman baru
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return MainPage();
            }));
          },
          child: Text("LOGIN"),
        ),
      ),
    );
  }
}
