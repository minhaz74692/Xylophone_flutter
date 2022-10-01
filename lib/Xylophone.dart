import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
class Xylophone extends StatefulWidget {
  const Xylophone({Key key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  playerButton(note){
    final player = AudioPlayer();
    return player.play(DeviceFileSource('assets/note$note.wav'));
  }
  Expanded buildKey(key, keyColor){  //Expanded data type is used instead of void!!!s
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(// Text Color
          backgroundColor: keyColor,
        ),
        onPressed: (){
          playerButton(key);
        },
        child: Text("Note$key"),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildKey(1, Colors.red),
        buildKey(2, Colors.green),
        buildKey(3 , Colors.yellow),
        buildKey(4 , Colors.cyanAccent),
        buildKey(5, Colors.black),
        buildKey(6 , Colors.indigo),
        buildKey(7, Colors.black12),
      ],
    );
  }
}
