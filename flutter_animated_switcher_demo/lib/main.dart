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
  // nilai awal dari switch
  bool isOn = false;

  // value awal dari widget
  Widget myWidget = Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(color: Colors.black, width: 2),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Animated Switcher"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // AnimatedSwitcher untuk mengubah widget dengan animasi
              AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
                child: myWidget,
              ),
              // Switch widget untuk mengubah nilai boolean
              Switch(
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green[200],
                  inactiveTrackColor: Colors.red,
                  inactiveThumbColor: Colors.red[200],
                  value: isOn,
                  onChanged: (newValue) {
                    isOn = newValue;
                    setState(() {
                      if (isOn) {
                        myWidget = Container(
                          key: const ValueKey(1),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                        );
                      } else {
                        myWidget = Container(
                          key: const ValueKey(2),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                        );
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
