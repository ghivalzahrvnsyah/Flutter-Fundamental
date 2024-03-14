import 'package:flutter/material.dart';
import 'package:flutter_connect_internet_post_demo/post_result_model.dart';
import 'package:flutter_connect_internet_post_demo/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResultModel? postResult;
  User? user;
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Post Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null)
                  ? "${postResult!.id} | ${postResult!.name} | ${postResult!.job} | ${postResult!.createdAt}"
                  : "Tidak ada data"),
              Text((user != null) ? "${user!.id} | ${user!.name}" : output),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    PostResultModel.connectToApi("Marsha Lenathea", "singer")
                        .then((value) {
                      postResult = value;
                      setState(() {});
                    });
                  },
                  child: Text("POST")),
              ElevatedButton(
                  onPressed: () {
                    User.getUsers("2").then((users) {
                      output = "";
                      for (int i = 0; i < users.length; i++) {
                        output = "$output[${users[i].id}] ${users[i].name}\n";
                      }
                      setState(() {});
                    });
                  },
                  child: Text("GET")),
            ],
          ),
        ),
      ),
    );
  }
}
