import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String durasi = "00:00:00";
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    audioPlayer.onDurationChanged.listen((Duration d) {
      setState(() {
        durasi = d.toString().split('.').first;
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  void playSound(UrlSource url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Music And Sound Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => playSound(UrlSource(
                    "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3")),
                child: Text("Play"),
              ),
              ElevatedButton(
                onPressed: pauseSound,
                child: Text("Pause"),
              ),
              ElevatedButton(
                onPressed: stopSound,
                child: Text("Stop"),
              ),
              ElevatedButton(
                onPressed: resumeSound,
                child: Text("Resume"),
              ),
              Text(
                durasi,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
