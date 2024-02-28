import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Widget Card",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xFFB784B7),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFFE493B3),
                Color(0xFFEEA5A6),
                Color(0xFFFFB996),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            ),
            cardView(context)
          ],
        ),
      ),
    );
  }

  Center cardView(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.7,
        child: Card(
          elevation: 10,
          child: Stack(
            children: [
              Opacity(
                opacity: 0.7,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/moroccan-flower.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/bunga_sakura.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    20, 50 + MediaQuery.of(context).size.height * 0.35, 20, 20),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        "Beautiful Pink Sakura Flower",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFE493B3),
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Posted on",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Text(
                              " 23 Feb 2024",
                              style: TextStyle(
                                  color: Color(0xFFE493B3),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Spacer(flex: 10),
                          Icon(
                            Icons.thumb_up,
                            size: 18,
                            color: Colors.grey,
                          ),
                          Spacer(flex: 1),
                          Text(
                            "100",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(flex: 15),
                          Icon(
                            Icons.comment,
                            size: 18,
                            color: Colors.grey,
                          ),
                          Spacer(flex: 1),
                          Text(
                            "5000",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(flex: 10)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
