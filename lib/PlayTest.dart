import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
class PlayTest extends StatelessWidget {
  const PlayTest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: (){
              player.play(DeviceFileSource("assets/note1.wav"));
            },
            child: Text("Click Me"),
          ),
          TextButton(onPressed: (){
            player.pause();
          },
            child: Text("Pause Me"),
          ),
          TextButton(onPressed: (){
            player.stop();
          },
            child: Text("Stop Me"),
          ),
        ]
    );
  }
}
