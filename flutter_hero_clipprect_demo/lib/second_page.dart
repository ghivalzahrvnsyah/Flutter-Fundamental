import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hero Animation Demo",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero( /// Hero Animation untuk transisi antar page
          tag: "profile", // memakai tag yang harus sama dengan tag yang ada di main_page.dart
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk9ecOm-qv1ET28bTMu128eH9udFEqc3D5vg&usqp=CAU",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
