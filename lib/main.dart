// @dart=2.9
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XyloPhone());
}

class XyloPhone extends StatelessWidget {
  Expanded buildkey({Color color, int soundnumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: Icon(
          Icons.piano,
          size: 100.0,
          color: Colors.black,
        ),
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundnumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.music_note,
            color: Colors.black,
            size: 50.0,
          ),
          centerTitle: true,
          title: Text(
            'Xylophone',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          backgroundColor: Colors.white70,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, soundnumber: 1),
              buildkey(color: Colors.orange, soundnumber: 2),
              buildkey(color: Colors.yellow, soundnumber: 3),
              buildkey(color: Colors.green, soundnumber: 4),
              buildkey(color: Colors.teal, soundnumber: 5),
              buildkey(color: Colors.blue, soundnumber: 6),
              buildkey(color: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
