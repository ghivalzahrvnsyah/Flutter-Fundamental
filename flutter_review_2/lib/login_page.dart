import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 70),
            child: Image(
              image: AssetImage("assets/20944201.jpg"),
              width: 350,
              height: 350,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Color(0xFF7D97F4), width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.fromLTRB(10, 370, 10, 20),
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                  child: const Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              size: 36,
                              color: Color(0xFF7D97F4),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF7D97F4),
                              ),
                            ),
                            labelText: "Username",
                            labelStyle: TextStyle(
                                color: Color(0xFF7D97F4),
                                fontFamily: "Poppins",
                                fontSize: 18)),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            size: 36,
                            color: Color(0xFF7D97F4),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF7D97F4),
                            ),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(
                              color: Color(0xFF7D97F4),
                              fontFamily: "Poppins",
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(60, 25, 60, 30),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 8,
                      backgroundColor: const Color(0xFF7D97F4),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      padding: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("LOGIN"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
