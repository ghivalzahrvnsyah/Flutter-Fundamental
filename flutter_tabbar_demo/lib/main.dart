import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const myTabBar = TabBar(
    labelColor: accentColor, // warna teks tab yang aktif
    dividerColor: accentColor, // warna garis pemisah tab
    indicatorColor: accentColor, // warna garis bawah tab yang aktif
    unselectedLabelColor: Colors.white, // warna teks tab yang tidak aktif
    tabs: [
      Tab(
        icon: Icon(Icons.comment),
        child: Text("Komentar"),
      ),
      Tab(
        icon: Icon(Icons.computer),
        child: Text("Komputer"),
      ),
    ],
  );
  static const Color accentColor = Color(0xFF7469B6);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      //  <--- DefaultTabController
      length: 2, // mendefinisikan berapa tab yang akan ditampilkan
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFE6E6),
          foregroundColor: accentColor,
          title: Text("TabBar Demo"),

          /// menambahkan TabBar untuk menampilkan tab
          bottom: PreferredSize(
            // menggunakan preferredSize untuk mengatur warna tabBar berdasarkan tinggi tabBar
            preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
            child: Container(color: Color(0xFFE1AFD1), child: myTabBar),
          ),
        ),

        /// isi content dari tab
        body: TabBarView(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.red,
                child: Center(child: Text("ini tab ke-1"))),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.blue,
                child: Center(child: Text("ini tab ke-2"))),
          ],
        ),
      ),
    ));
  }
}
