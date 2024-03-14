import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller =
      TextEditingController(text: "Shared Preference Demo");
  bool isOn = false;

  // Method untuk save data
  void saveData() async {
    // Mengambil instance dari shared preferences/objek prefs
    SharedPreferences pref = await SharedPreferences.getInstance();

    //save yang ada di textfield dan switch
    pref.setString("nama", controller.text);
    pref.setBool("ison", isOn);
  }

  // Method untuk load data
  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    // jika tidak ada data nama, maka kembalikan "Tidak ada Nama"
    return pref.getString("nama") ?? "Tidak ada Nama";
  }

  // Method untuk load data
  Future<bool> getOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    // jika tidak ada data ison, maka kembalikan false
    return pref.getBool("ison") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preferences Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
            ),
            Switch(
              value: isOn,
              onChanged: (newValue) {
                setState(() {
                  isOn = newValue;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  saveData();
                },
                child: Text("Save")),
            ElevatedButton(
                onPressed: () {
                  getNama().then((value) {
                    controller.text = value;
                    setState(() {});
                  });
                  getOn().then((value) {
                    isOn = value;
                    setState(() {});
                  });
                },
                child: Text("Load"))
          ],
        ),
      ),
    ));
  }
}
