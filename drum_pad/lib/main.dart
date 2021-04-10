import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPagee(),
      ),
    );
  }
}

class DrumPagee extends StatelessWidget {
  final player = AudioCache();
  void Players(String voice_name) {
    player.play('$voice_name.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad('bip', Colors.blue),
                  ),
                  Expanded(
                    child: buildDrumPad('bongo', Colors.red),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad('clap1', Colors.brown),
                  ),
                  Expanded(
                    child: buildDrumPad('crash', Colors.green),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad('how', Colors.yellow),
                  ),
                  Expanded(
                    child: buildDrumPad('oobah', Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad('ridebel', Colors.purple),
                  ),
                  Expanded(
                    child: buildDrumPad('woo', Colors.pink),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton buildDrumPad(String voice, Color color) {
    return FlatButton(
      padding: EdgeInsets.all(10),
      onPressed: () {
        Players(voice);
      },
      child: Container(
        color: color,
      ),
    );
  }
}
