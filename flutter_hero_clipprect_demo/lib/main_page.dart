import 'package:flutter/material.dart';
import 'package:flutter_hero_clipprect_demo/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Hero Animation Demo",
            style: TextStyle(color: Colors.white),
          )),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return SecondPage();
            },
          ));
        },
        child: Hero( /// Hero animation untuk transisi antar page
          tag: "profile", // menggunakan tag yang harus sama dengan tag yang ada di second_page.dart
          child: ClipRRect(
            //widget untuk memotong gambar menjadi bentuk bulat
            borderRadius: BorderRadius.circular(50),
            child: Container(
                width: 100,
                height: 100,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk9ecOm-qv1ET28bTMu128eH9udFEqc3D5vg&usqp=CAU",
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
