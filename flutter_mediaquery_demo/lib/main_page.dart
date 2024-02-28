import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        /// checking orientasi layar 
        body: (MediaQuery.of(context).orientation == Orientation.portrait) ?
        Column(
          children: generateContainers,
        ) :
        Row(
          children: generateContainers,
        )
      ),
    );
  }

  List<Widget> get generateContainers {
    return [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ];
  }
}
