
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NetworkAudio extends StatelessWidget {
  late final int trackno;
  NetworkAudio({Key? key, required this.trackno}) : super();
  AudioPlayer advancedPlayer = AudioPlayer();
  build(BuildContext b) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/$trackno.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(80.0),
                ),
              ),
              Container(
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.play_arrow),
                  iconSize: 35,
                  color: Colors.lightGreenAccent,
                  onPressed: () async {
                    // await advancedPlayer.play('');
                    advancedPlayer =
                    await AudioCache().play('Music__$trackno'+'_01.mp3');
                    //await advancedPlayer.resume();
                  },
                ),
              ),
              Container(
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.pause),
                  iconSize: 35,
                  color: Colors.lightGreen.shade600,
                  onPressed: () async {
                    await advancedPlayer.pause();
                  },
                ),
              ),
              Container(
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.stop),
                  iconSize: 35,
                  color: Colors.green.shade600,
                  onPressed: () async {
                    await advancedPlayer.stop();
                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
          ),

        ],
      ),
    );
  }
}