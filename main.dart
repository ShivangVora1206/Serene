import 'dart:io';
import 'dart:async';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kalmapp/ad_helper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'ui/networkAudio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/foundation.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'package:animated_text_kit/animated_text_kit.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(BasePage());
}

class BasePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home:AnimatedSplashScreen(
          splash: Container(
            child: Center(
              child: Text("Serene",
              style: TextStyle(
                fontFamily: 'GlossAndBloom',
                fontSize: 35,
                color: Colors.lightGreenAccent.shade700
              ),)
            ),
          ),
          nextScreen: Baseapp(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white,
          duration: 4000,

        ),
    );
  }
}

class Baseapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
            radius: 1,
            colors: [
              Colors.white,
              Colors.lightGreenAccent.shade100
            ]
        ),
      ),
      child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.green.shade400,
                        Colors.lightGreenAccent
                      ]
                  ),
                )
            ),
            centerTitle: true,
            title: Text("Serene"),
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children :[
                    Expanded(
                        child: SizedBox(
                          height: 1,
                          width: 500,
                        )
                    ),
                    Expanded(
                      child: Container(
                          constraints: BoxConstraints(
                            minWidth: 300
                          ),
                          child: TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => MusicPage3()
                                )
                                );
                          },
                              child: Text("Music",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 50
                                ),
                              )
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image:  DecorationImage(
                              image:AssetImage('assets/music_bg.jpg'),
                            fit: BoxFit.fill,
                              opacity: 0.75
                            ),
                              borderRadius: BorderRadius.circular(100.0)
                          ),
                        ),
                    ),

                    Expanded(
                      child: SizedBox(
                        height: 3,
                      )
                    ),
                    Expanded(
                      child: Container(
                        constraints: BoxConstraints(
                            minWidth: 300
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Question1(score: 0)
                          )
                          );
                        },
                            child: Text("Quick Test",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 50
                              ),
                            )
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black,
                          image:  DecorationImage(
                            image:AssetImage('assets/question_bg.jpg'),
                            fit: BoxFit.fill,
                            opacity: 0.75

                          ),
                            borderRadius: BorderRadius.circular(100.0)

                        ),
                      ),
                    ),
                    Expanded(
                        child: SizedBox(
                          height: 3,
                        )
                    ),
                    Expanded(
                      child: Container(
                        constraints: BoxConstraints(
                            minWidth: 300
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => StressRel()
                          )
                          );
                        },
                            child: Text("Anti Stress",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 50
                              ),
                            )
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image:  DecorationImage(
                                image:AssetImage('assets/3.jpg'),
                                fit: BoxFit.fill,
                                opacity: 0.75
                            ),
                            borderRadius: BorderRadius.circular(100.0)
                        ),
                      ),
                    ),
                    Expanded(
                        child: SizedBox(
                          height: 3,
                        )
                    ),
                    Expanded(
                      child: Container(
                        constraints: BoxConstraints(
                            minWidth: 300
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => VideoPage2()
                          )
                          );
                        },
                            child: Text("Videos",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 50
                              ),
                            )
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image:  DecorationImage(
                                image:AssetImage('assets/2.jpg'),
                                fit: BoxFit.fill,
                                opacity: 0.75
                            ),
                            borderRadius: BorderRadius.circular(100.0)
                        ),
                      ),
                    ),
                    Expanded(
                        child: SizedBox(
                          height: 2,
                        )
                    ),

                  ]
              )
          )
      ),
    );

  }
}

// class VideoPage extends StatelessWidget{
//
//
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//     ]);
//     return MaterialApp(
//       home : Scaffold(
//         appBar: AppBar(
//           flexibleSpace: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     colors: [
//                       Colors.green.shade400,
//                       Colors.lightGreenAccent
//                     ]
//                 ),
//               )
//           ),
//           centerTitle: true,
//           title: Text("Videos"),
//
//         ),
//         body: Container(
//             child : Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//
//                   Expanded(
//                     child: Center(
//
//                       child: TextButton(
//
//                         child: Image.asset('assets/vid_bg1.jpg',
//                         fit: BoxFit.fitWidth,
//                         ),
//                       onPressed: () => launch('https://youtu.be/vpO_3ZegQL4')
//                     ),
//                   ),
//                   ),
//                   Expanded(
//                     child: Center(
//                       child: TextButton(
//                           child: Image.asset('assets/vid_bg2.jpg'),
//                           onPressed: () => launch('https://youtu.be/SA17T53R1do')
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Center(
//                       child: TextButton(
//                           child: Image.asset('assets/vid_bg3.jpg'),
//                           onPressed: () => launch('https://youtu.be/wIaYlgAUEBI')
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Center(
//                       child: TextButton(
//                           child: Image.asset('assets/vid_bg4.jpg'),
//                           onPressed: () => launch('https://youtu.be/woambVbJ4oU')
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Center(
//                       child: TextButton(
//                           child: Image.asset('assets/vid_bg5.jpg'),
//                           onPressed: () => launch('https://youtu.be/0_S5NQzMs-A')
//                       ),
//                     ),
//                   ),
//                 ],
//
//           )
//         ),
//
//       ),
//       );
//
//   }
// }


class VideoPage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final List<int> videoIds = <int>[1, 2, 3, 4, 5];
    final List<String> videoYTIds = <String>['vpO_3ZegQL4',
                                              'SA17T53R1do',
                                              'wIaYlgAUEBI',
                                              'woambVbJ4oU',
                                              '0_S5NQzMs-A'];
    return MaterialApp(
      home : Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [
              Colors.green.shade400,
              Colors.lightGreenAccent
                  ]
              ),
            )
          ),
            centerTitle: true,
            title: Text("Videos"),
        ),

              body: ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: videoIds.length,
                    itemBuilder: (BuildContext context, int index) {
                    return Container(
                            height: 250,
                            child: Center(
                                child: TextButton(

                                    child: Image.asset('assets/vid_bg'+videoIds[index].toString()+'.jpg'),
                                    onPressed: () => launch('https://youtu.be/'+videoYTIds[index])
                                ),

                            ),
                    );
                    },
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
    ),

      )
    );
  }
}


class StressRel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    Expanded tiles(int track_no){
      return Expanded(
        child: TextButton(
            child: Image.asset('assets/$track_no.jpg'),
            onPressed: () {
              final assetsAudioPlayer = AssetsAudioPlayer();

              assetsAudioPlayer.open(
                Audio("assets/audios/note$track_no.wav"),
              );
            }
        ),
      );
    }
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                tiles(1),
                tiles(2),
                tiles(3),
                tiles(4),
                tiles(5),

              ],
            )
        ),
      ),
    );
  }
}



// class MusicPage extends StatelessWidget {
//   // static AudioCache player = new AudioCache();
//   AudioPlayer advancedPlayer = AudioPlayer();
//   @override
//   Widget build(BuildContext context) {
//     Expanded tiles(int track_no){
//       return Expanded(
//         child: TextButton(
//             child: Image.asset('assets/$track_no.jpg'),
//             onPressed: () async{
//             //   String audio = "Music_$track_no.mp3";
//               await advancedPlayer.play(
//                   'https://luan.xyz/files/audio/ambient_c_motion.mp3');
//             },
//
//         ),
//       );
//     }
//     return MaterialApp(
//       home: Scaffold(
//
//         backgroundColor: Colors.white,
//         body: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 tiles(1),
//                 tiles(2),
//                 tiles(3),
//                 tiles(4),
//                 tiles(5),
//
//               ],
//             )
//         ),
//       ),
//     );
//   }
// }

class MusicPage3 extends StatefulWidget{
  const MusicPage3({Key? key}) : super(key: key);

  @override
  _MusicPage3State createState() => _MusicPage3State();
}

class _MusicPage3State extends State<MusicPage3>{
  late BannerAd _bottomBannerAd;
  late BannerAd _inlineBannerAd;

  bool _isBottomBannerAdLoaded = false;
  bool _isInlineBannerAdLoaded = false;

  void _createBottomBannerAd(){
    _bottomBannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(onAdLoaded: (_){
        setState(() {
          _isBottomBannerAdLoaded=true;
        }
        );
      },
        onAdFailedToLoad: (ad, error){
        ad.dispose();
        }
      )
    );
    _bottomBannerAd.load();
  }
  void _createInlineBannerAd(){
    _inlineBannerAd = BannerAd(
      adUnitId: AdHelper.inlinebannerAdUnitId,
      size: AdSize.mediumRectangle,
      request: AdRequest(),
      listener: BannerAdListener(onAdLoaded: (_){
        setState(() {
          _isInlineBannerAdLoaded=true;
        }
        );
      },
          onAdFailedToLoad: (ad, error){
            ad.dispose();
          }
      )
    );
    _inlineBannerAd.load();
  }

  @override
  void initState() {

    super.initState();
    _createBottomBannerAd();
    _createInlineBannerAd();
  }
  @override
  void dispose() {
    super.dispose();
    _bottomBannerAd.dispose();
    _inlineBannerAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: _isBottomBannerAdLoaded ? Container(height: _bottomBannerAd.size.height.toDouble(),width: _bottomBannerAd.size.width.toDouble(),child: AdWidget(ad: _bottomBannerAd)) : null,
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.green.shade400,
                      Colors.lightGreenAccent
                    ]
                ),
              )
          ),
          centerTitle: true,
          title: Text("Music"),

        ),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: ListView(

              children: [
                NetworkAudio(trackno: 1),
                NetworkAudio(trackno: 2),
                NetworkAudio(trackno: 3),
                NetworkAudio(trackno: 4),
                Container(child: _isInlineBannerAdLoaded ? Container(height: _inlineBannerAd.size.height.toDouble(),width: _inlineBannerAd.size.width.toDouble(),child: AdWidget(ad: _inlineBannerAd)) : null,),
                NetworkAudio(trackno: 5),
                NetworkAudio(trackno: 1),
                NetworkAudio(trackno: 2),
              ],
            )
        ),
      ),
    );
  }
}

class MusicPage2 extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.green.shade400,
                      Colors.lightGreenAccent
                    ]
                ),
              )
          ),
          centerTitle: true,
          title: Text("Music"),

        ),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: ListView(

              children: [
                NetworkAudio(trackno: 1),
                NetworkAudio(trackno: 2),
                NetworkAudio(trackno: 3),
                NetworkAudio(trackno: 4),
                NetworkAudio(trackno: 5),
                NetworkAudio(trackno: 1),
                NetworkAudio(trackno: 2),
              ],
            )
        ),
      ),
    );
  }
}





class Question1 extends StatefulWidget {
  late final int score;
  Question1({Key? key, required this.score}) : super();

  @override
  State<Question1> createState() => _Question1(score: score);
}

class _Question1 extends State<Question1> {
  late  int score;
  _Question1({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question2(
                                  score: score
                                )
                            )
                            );
                          },
                              child:  Text("I have a natural talent for influencing people.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),Shadow(
                                        color: Colors.white38,
                                        blurRadius: 20.0,
                                        offset: Offset(-5.0, 5.0),
                                      ),
                                    ],
                                  fontSize: 30,
                                  color: Colors.white
                                ),
                              )),

                        decoration: BoxDecoration(

                          gradient: RadialGradient(
                            radius: 0.6,
                              colors: [
                                Colors.deepPurpleAccent,
                                Colors.deepPurple
                              ]
                          ),
                        ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question2(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I am not good at influencing people.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                      Shadow(
                                        color: Colors.white38,
                                        blurRadius: 20.0,
                                        offset: Offset(-5.0, 5.0),
                                      ),
                                    ],
                          color: Colors.white,
                            fontSize: 30
                        ),
                     )
                ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question2 extends StatefulWidget {
  late final int score;
  Question2({Key? key, required this.score}) : super();

  @override
  State<Question2> createState() => _Question2(score: score);
}

class _Question2 extends State<Question2> {
  late  int score;
  _Question2({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question3(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("Modesty doesn't become me.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question3(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I am essentially a modest person.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}



class Question3 extends StatefulWidget {
  late final int score;
  Question3({Key? key, required this.score}) : super();

  @override
  State<Question3> createState() => _Question3(score: score);
}

class _Question3 extends State<Question3> {
  late  int score;
  _Question3({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question4(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I would do almost anything on a dare. ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question4(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I tend to be a fairly cautious person.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.indigoAccent.shade700,
                                  Colors.indigo.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}


class Question4 extends StatefulWidget {
  late final int score;
  Question4({Key? key, required this.score}) : super();

  @override
  State<Question4> createState() => _Question4(score: score);
}

class _Question4 extends State<Question4> {
  late  int score;
  _Question4({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question5(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("When people compliment me I sometimes get embarrassed.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question5(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I know that I am good because everybody keeps telling me so.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question5 extends StatefulWidget {
  late final int score;
  Question5({Key? key, required this.score}) : super();

  @override
  State<Question5> createState() => _Question5(score: score);
}

class _Question5 extends State<Question5> {
  late  int score;
  _Question5({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question6(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("The thought of ruling the world frightens the hell out of me.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.indigoAccent.shade700,
                                  Colors.indigo.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question6(
                                    score: score
                                )
                            ));
                          },
                              child: Text("If I ruled the world it would be a better place.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question6 extends StatefulWidget {
  late final int score;
  Question6({Key? key, required this.score}) : super();

  @override
  State<Question6> createState() => _Question6(score: score);
}

class _Question6 extends State<Question6> {
  late  int score;
  _Question6({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question7(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I can usually talk my way out of anything.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question7(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I try to accept the consequences of my behavior.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question7 extends StatefulWidget {
  late final int score;
  Question7({Key? key, required this.score}) : super();

  @override
  State<Question7> createState() => _Question7(score: score);
}

class _Question7 extends State<Question7> {
  late  int score;
  _Question7({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question8(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I prefer to blend in with the crowd.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.indigoAccent.shade700,
                                  Colors.indigo.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question8(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I like to be the center of attention.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question8 extends StatefulWidget {
  late final int score;
  Question8({Key? key, required this.score}) : super();

  @override
  State<Question8> createState() => _Question8(score: score);
}

class _Question8 extends State<Question8> {
  late  int score;
  _Question8({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question9(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I will be a success.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question9(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I am not too concerned about success.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}


class Question9 extends StatefulWidget {
  late final int score;
  Question9({Key? key, required this.score}) : super();

  @override
  State<Question9> createState() => _Question9(score: score);
}

class _Question9 extends State<Question9> {
  late  int score;
  _Question9({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question10(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I am not sure if I would make a good leader.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question10(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I see myself as a good leader.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.indigoAccent.shade700,
                                  Colors.indigo.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}


class Question10 extends StatefulWidget {
  late final int score;
  Question10({Key? key, required this.score}) : super();

  @override
  State<Question10> createState() => _Question10(score: score);
}

class _Question10 extends State<Question10> {
  late  int score;
  _Question10({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question11(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I am no better or worse than most people.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurple
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question11(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I think I am a special person.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question11 extends StatefulWidget {
  late final int score;
  Question11({Key? key, required this.score}) : super();

  @override
  State<Question11> createState() => _Question11(score: score);
}

class _Question11 extends State<Question11> {
  late  int score;
  _Question11({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question12(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I am assertive.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question12(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I wish I were more assertive.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question12 extends StatefulWidget {
  late final int score;
  Question12({Key? key, required this.score}) : super();

  @override
  State<Question12> createState() => _Question12(score: score);
}

class _Question12 extends State<Question12> {
  late  int score;
  _Question12({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question13(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I like to have authority over other people.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.indigoAccent.shade700,
                                  Colors.indigo.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question13(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I don't mind following orders.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question13 extends StatefulWidget {
  late final int score;
  Question13({Key? key, required this.score}) : super();

  @override
  State<Question13> createState() => _Question13(score: score);
}

class _Question13 extends State<Question13> {
  late  int score;
  _Question13({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question14(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I find it easy to manipulate people.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question14(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I don't like it when I find myself manipulating people.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question14 extends StatefulWidget {
  late final int score;
  Question14({Key? key, required this.score}) : super();

  @override
  State<Question14> createState() => _Question14(score: score);
}

class _Question14 extends State<Question14> {
  late  int score;
  _Question14({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question15(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I insist upon getting the respect that is due me.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question15(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I usually get the respect that I deserve.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question15 extends StatefulWidget {
  late final int score;
  Question15({Key? key, required this.score}) : super();

  @override
  State<Question15> createState() => _Question15(score: score);
}

class _Question15 extends State<Question15> {
  late  int score;
  _Question15({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question16(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I don't particularly like to show off my body. ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question16(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I like to show off my body.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.indigoAccent.shade700,
                                  Colors.indigo.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question16 extends StatefulWidget {
  late final int score;
  Question16({Key? key, required this.score}) : super();

  @override
  State<Question16> createState() => _Question16(score: score);
}

class _Question16 extends State<Question16> {
  late  int score;
  _Question16({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+=1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question17(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I can read people like a book.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question17(
                                    score: score
                                )
                            ));
                          },
                              child: Text("People are sometimes hard to understand.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question17 extends StatefulWidget {
  late final int score;
  Question17({Key? key, required this.score}) : super();

  @override
  State<Question17> createState() => _Question17(score: score);
}

class _Question17 extends State<Question17> {
  late  int score;
  _Question17({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question18(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("If I feel competent I am willing to take responsibility for making decisions.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question18(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I like to take responsibility for making decisions.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question18 extends StatefulWidget {
  late final int score;
  Question18({Key? key, required this.score}) : super();

  @override
  State<Question18> createState() => _Question18(score: score);
}

class _Question18 extends State<Question18> {
  late  int score;
  _Question18({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question19(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I just want to be reasonably happy.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurple
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question19(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I want to amount to something in the eyes of the world.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question19 extends StatefulWidget {
  late final int score;
  Question19({Key? key, required this.score}) : super();

  @override
  State<Question19> createState() => _Question19(score: score);
}

class _Question19 extends State<Question19> {
  late  int score;
  _Question19({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question20(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("My body is nothing special.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question20(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I like to look at my body.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question20 extends StatefulWidget {
  late final int score;
  Question20({Key? key, required this.score}) : super();

  @override
  State<Question20> createState() => _Question20(score: score);
}

class _Question20 extends State<Question20> {
  late  int score;
  _Question20({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question21(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I try not to be a show off. ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.indigoAccent.shade700,
                                  Colors.indigo.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question21(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I will usually show off if I get the chance.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question21 extends StatefulWidget {
  late final int score;
  Question21({Key? key, required this.score}) : super();

  @override
  State<Question21> createState() => _Question21(score: score);
}

class _Question21 extends State<Question21> {
  late  int score;
  _Question21({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question22(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I always know what I am doing. ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question22(
                                    score: score
                                )
                            ));
                          },
                              child: Text("Sometimes I am not sure of what I am doing.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question22 extends StatefulWidget {
  late final int score;
  Question22({Key? key, required this.score}) : super();

  @override
  State<Question22> createState() => _Question22(score: score);
}

class _Question22 extends State<Question22> {
  late  int score;
  _Question22({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question23(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I sometimes depend on people to get things done. ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question23(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I rarely depend on anyone else to get things done.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurple
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}


class Question23 extends StatefulWidget {
  late final int score;
  Question23({Key? key, required this.score}) : super();

  @override
  State<Question23> createState() => _Question23(score: score);
}

class _Question23 extends State<Question23> {
  late  int score;
  _Question23({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question24(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("Sometimes I tell good stories. ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.indigoAccent.shade700,
                                  Colors.indigo.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question24(
                                    score: score
                                )
                            ));
                          },
                              child: Text("Everybody likes to hear my stories.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}


class Question24 extends StatefulWidget {
  late final int score;
  Question24({Key? key, required this.score}) : super();

  @override
  State<Question24> createState() => _Question24(score: score);
}

class _Question24 extends State<Question24> {
  late  int score;
  _Question24({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question25(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I expect a great deal from other people.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question25(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I like to do things for other people.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}


class Question25 extends StatefulWidget {
  late final int score;
  Question25({Key? key, required this.score}) : super();

  @override
  State<Question25> createState() => _Question25(score: score);
}

class _Question25 extends State<Question25> {
  late  int score;
  _Question25({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question26(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I will never be satisfied until I get all that I deserve.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question26(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I take my satisfactions as they come.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question26 extends StatefulWidget {
  late final int score;
  Question26({Key? key, required this.score}) : super();

  @override
  State<Question26> createState() => _Question26(score: score);
}

class _Question26 extends State<Question26> {
  late  int score;
  _Question26({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question27(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("Compliments embarrass me.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question27(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I like to be complimented.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.indigoAccent.shade700,
                                  Colors.indigo.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question27 extends StatefulWidget {
  late final int score;
  Question27({Key? key, required this.score}) : super();

  @override
  State<Question27> createState() => _Question27(score: score);
}

class _Question27 extends State<Question27> {
  late  int score;
  _Question27({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question28(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I have a strong will to power.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question28(
                                    score: score
                                )
                            ));
                          },
                              child: Text("Power for its own sake doesn't interest me.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question28 extends StatefulWidget {
  late final int score;
  Question28({Key? key, required this.score}) : super();

  @override
  State<Question28> createState() => _Question28(score: score);
}

class _Question28 extends State<Question28> {
  late  int score;
  _Question28({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question29(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I don't care about new fads and fashions.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.indigoAccent.shade700,
                                  Colors.indigo.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question29(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I like to start new fads and fashions.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question29 extends StatefulWidget {
  late final int score;
  Question29({Key? key, required this.score}) : super();

  @override
  State<Question29> createState() => _Question29(score: score);
}

class _Question29 extends State<Question29> {
  late  int score;
  _Question29({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question30(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I like to look at myself in the mirror.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question30(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I am not particularly interested in looking at myself in the mirror.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question30 extends StatefulWidget {
  late final int score;
  Question30({Key? key, required this.score}) : super();

  @override
  State<Question30> createState() => _Question30(score: score);
}

class _Question30 extends State<Question30> {
  late  int score;
  _Question30({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question31(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I really like to be the center of attention.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question31(
                                    score: score
                                )
                            ));
                          },
                              child: Text("It makes me uncomfortable to be the center of attention.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question31 extends StatefulWidget {
  late final int score;
  Question31({Key? key, required this.score}) : super();

  @override
  State<Question31> createState() => _Question31(score: score);
}

class _Question31 extends State<Question31> {
  late  int score;
  _Question31({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question32(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I can live my life in any way I want to. ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question32(
                                    score: score
                                )
                            ));
                          },
                              child: Text("People can't always live their lives in terms of what they want.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurple
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question32 extends StatefulWidget {
  late final int score;
  Question32({Key? key, required this.score}) : super();

  @override
  State<Question32> createState() => _Question32(score: score);
}

class _Question32 extends State<Question32> {
  late  int score;
  _Question32({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question33(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("Being an authority doesn't mean that much to me.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurple
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question33(
                                    score: score
                                )
                            ));
                          },
                              child: Text("People always seem to recognize my authority.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}


class Question33 extends StatefulWidget {
  late final int score;
  Question33({Key? key, required this.score}) : super();

  @override
  State<Question33> createState() => _Question33(score: score);
}

class _Question33 extends State<Question33> {
  late  int score;
  _Question33({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question34(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I would prefer to be a leader.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question34(
                                    score: score
                                )
                            ));
                          },
                              child: Text("It makes little difference to me whether I am a leader or not.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question34 extends StatefulWidget {
  late final int score;
  Question34({Key? key, required this.score}) : super();

  @override
  State<Question34> createState() => _Question34(score: score);
}

class _Question34 extends State<Question34> {
  late  int score;
  _Question34({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question35(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I am going to be a great person.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question35(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I hope I am going to be successful.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurple
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question35 extends StatefulWidget {
  late final int score;
  Question35({Key? key, required this.score}) : super();

  @override
  State<Question35> createState() => _Question35(score: score);
}

class _Question35 extends State<Question35> {
  late  int score;
  _Question35({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question36(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("People sometimes believe what I tell them.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question36(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I can make anybody believe anything I want them to.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question36 extends StatefulWidget {
  late final int score;
  Question36({Key? key, required this.score}) : super();

  @override
  State<Question36> createState() => _Question36(score: score);
}

class _Question36 extends State<Question36> {
  late  int score;
  _Question36({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question37(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I am a born leader.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question37(
                                    score: score
                                )
                            ));
                          },
                              child: Text("Leadership is a quality that takes a long time to develop.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurple
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question37 extends StatefulWidget {
  late final int score;
  Question37({Key? key, required this.score}) : super();

  @override
  State<Question37> createState() => _Question37(score: score);
}

class _Question37 extends State<Question37> {
  late  int score;
  _Question37({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question38(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I wish somebody would someday write my biography.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question38(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I don't like people to pry into my life for any reason.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question38 extends StatefulWidget {
  late final int score;
  Question38({Key? key, required this.score}) : super();

  @override
  State<Question38> createState() => _Question38(score: score);
}

class _Question38 extends State<Question38> {
  late  int score;
  _Question38({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question39(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I get upset when people don't notice how I look when I go out in public.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurple
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question39(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I don't mind blending into the crowd when I go out in public.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class Question39 extends StatefulWidget {
  late final int score;
  Question39({Key? key, required this.score}) : super();

  @override
  State<Question39> createState() => _Question39(score: score);
}

class _Question39 extends State<Question39> {
  late  int score;
  _Question39({Key? key, required this.score}) : super();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 1;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question40(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I am more capable than other people.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.orange.shade700,
                                  Colors.red.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 0;
                            print(score);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Question40(
                                    score: score
                                )
                            ));
                          },
                              child: Text("There is a lot that I can learn from other people.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.lightGreenAccent.shade700,
                                  Colors.green.shade600
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}
const int maxFailedLoadAttempts = 3;
class Question40 extends StatefulWidget {
  late final int score;
  Question40({Key? key, required this.score}) : super();

  @override
  State<Question40> createState() => _Question40(score: score);
}

class _Question40 extends State<Question40> {
  late  int score;
  _Question40({Key? key, required this.score}) : super();

  InterstitialAd? _interstitialAd;
  int _interstitialLoadAttempts = 0;

  void _createInterstitialAd(){
    InterstitialAd.load(adUnitId: AdHelper.interstitialAdUnitId40toFinal,
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad){
            _interstitialAd = ad;
            _interstitialLoadAttempts = 0;
          },
          onAdFailedToLoad: (LoadAdError error){
            _interstitialLoadAttempts += 1;
            _interstitialAd = null;
            if(_interstitialLoadAttempts <= maxFailedLoadAttempts){
              _createInterstitialAd();
            }
          }
        ));
  }

  void _showInterstitialAd(){
    if(_interstitialAd != null){
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
          onAdDismissedFullScreenContent: (InterstitialAd ad){
            ad.dispose();
            _createInterstitialAd();
          },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error){
        ad.dispose();
        _createInterstitialAd();
      });
      _interstitialAd!.show();
    }
  }

  @override
  void initState() {
    super.initState();
    _createInterstitialAd();
  }

  @override
  void dispose() {
    super.dispose();
    _interstitialAd?.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){
                            score+= 0;
                            print(score);
                            _showInterstitialAd();
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => _finalPage(
                                    score: score
                                )
                            ));
                          },
                              child:  Text("I am much like everybody else. ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black38,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              )),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.pinkAccent.shade200,
                                  Colors.pink.shade600
                                ]
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(onPressed: (){

                            score += 1;
                            print(score);
                            _showInterstitialAd();
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => _finalPage(
                                    score: score
                                )
                            ));
                          },
                              child: Text("I am an extraordinary person.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black38,
                                        offset: Offset(5.0, 5.0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              )
                          ),
                          decoration: BoxDecoration(

                            gradient: RadialGradient(
                                radius: 0.6,
                                colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurple
                                ]
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

class _finalPage extends StatefulWidget {
  late final int score;
  _finalPage({Key? key, required this.score}) : super();

  @override
  State<_finalPage> createState() => finalPage(score: score);
}

class finalPage extends State<_finalPage>{
  late final int score;
  finalPage({Key? key, required this.score}) : super();
  InterstitialAd? _interstitialAd;
  int _interstitialLoadAttempts = 0;

  void _createInterstitialAd(){
    InterstitialAd.load(adUnitId: AdHelper.interstitialAdUnitIdFinaltoBase,
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: (InterstitialAd ad){
              _interstitialAd = ad;
              _interstitialLoadAttempts = 0;
            },
            onAdFailedToLoad: (LoadAdError error){
              _interstitialLoadAttempts += 1;
              _interstitialAd = null;
              if(_interstitialLoadAttempts <= maxFailedLoadAttempts){
                _createInterstitialAd();
              }
            }
        ));
  }

  void _showInterstitialAd(){
    if(_interstitialAd != null){
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
          onAdDismissedFullScreenContent: (InterstitialAd ad){
            ad.dispose();
            _createInterstitialAd();
          },
          onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error){
            ad.dispose();
            _createInterstitialAd();
          });
      _interstitialAd!.show();
    }
  }

  @override
  void initState() {
    super.initState();
    _createInterstitialAd();
  }

  @override
  void dispose() {
    super.dispose();
    _interstitialAd?.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    String verdict="";
    if(score >= 30 && score <= 40){
      verdict = "Stress Free";
    }else if(score >= 20 && score <= 30){
      verdict = "Low Stress";
    }else if(score >= 10 && score <= 20){
      verdict = "Moderate Stress";
    }else if(score >= 0 && score <= 10){
      verdict = "High Stress";
    }
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_rounded),
          backgroundColor: Colors.lightGreenAccent.shade700,//child widget inside this button
          onPressed: (){
            _showInterstitialAd();
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => Baseapp()
                )
            );
          },
        ),
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.green.shade400,
                      Colors.lightGreenAccent
                    ]
                ),
              )
          ),
          title: Text("Conclusion"),
          centerTitle: true,
        ),
        body: Container(decoration: BoxDecoration(
          gradient: RadialGradient(
              radius: 1.8,
              colors: [
                Colors.white,
                Colors.lightGreenAccent.shade100
              ]
          ),
        ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Expanded(child: SizedBox(width: 1000, height: 2,)),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          child: Text("Your Score",
                              style: new TextStyle(
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()..shader = LinearGradient(
                                    colors: <Color>[

                                      Colors.lightGreenAccent.shade100,
                                      Colors.green.shade400,
                                      //add more color here.
                                    ],
                                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                              )
                          )
                      ),
                      Expanded(
                          child: Text(score.toString(),
                              style: new TextStyle(
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()..shader = LinearGradient(
                                    colors: <Color>[

                                      Colors.lightGreenAccent.shade100,
                                      Colors.green.shade400,
                                      //add more color here.
                                    ],
                                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                              ))
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Text(verdict,
                        style: new TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()..shader = LinearGradient(
                              colors: <Color>[

                                Colors.blue,
                                Colors.lightBlueAccent,
                                //add more color here.
                              ],
                            ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                        ))
                ),
                Expanded(
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text("40 > x > 30 - Stress Free ",
                              style: new TextStyle(
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()..shader = LinearGradient(
                                    colors: <Color>[

                                      Colors.blue,
                                      Colors.lightBlueAccent,
                                      //add more color here.
                                    ],
                                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                              ))
                      ),
                      // Expanded(child: SizedBox( height: 0.5)),
                      Expanded(
                          child: Text("30 > x > 20 - Low Stress",
                              style: new TextStyle(
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()..shader = LinearGradient(
                                    colors: <Color>[

                                      Colors.blue,
                                      Colors.lightBlueAccent,
                                      //add more color here.
                                    ],
                                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                              ))
                      ),
                      // Expanded(child: SizedBox(height: 0.5)),
                      Expanded(
                          child: Text("20 > x > 10 - Moderate Stress",
                              style: new TextStyle(
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()..shader = LinearGradient(
                                    colors: <Color>[

                                      Colors.blue,
                                      Colors.lightBlueAccent,
                                      //add more color here.
                                    ],
                                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                              ))
                      ),
                      // Expanded(child: SizedBox(height: 0.5)),
                      Expanded(
                          child: Text("10 > x > 0 - High Stress",
                              style: new TextStyle(
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()..shader = LinearGradient(
                                    colors: <Color>[

                                      Colors.blue,
                                      Colors.lightBlueAccent,
                                      //add more color here.
                                    ],
                                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                              ))
                      ),
                    ],
                  ),
                ),
                Expanded(child: SizedBox(width: 1000, height: 10)),
              ],
            ),
        ),

        ),
    );
  }
}
