import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:xylophone/PlayTest.dart';
import 'package:xylophone/Xylophone.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Xy-loPhone")),
        ),
        body: SafeArea(
          child: Center(
              // child:PlayTest(),
            child: Xylophone(),
          ),
        ),
      ),
    );
  }
}
