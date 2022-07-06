import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pausable_timer/pausable_timer.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TimerTab extends StatefulWidget {
  const TimerTab({Key? key}) : super(key: key);

  @override
  State<TimerTab> createState() => _TimerTabState();
}

class _TimerTabState extends State<TimerTab> {
  late YoutubePlayerController _controller;
  late PlayerState _playerState;
  Timer? timer;
  Duration duration = Duration();

  //int timecount = 60;
  var statusCheck = "";

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
              'https://www.youtube.com/watch?v=92u6QL67X98&ab_channel=LoopazzikaBand')
          .toString(),
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _playerState = PlayerState.unknown;
  }

  void listener() {
    setState(() {
      _playerState = _controller.value.playerState;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final min = twoDigits(duration.inMinutes.remainder(60));
    final sec = twoDigits(duration.inSeconds.remainder(60));
    return Scaffold(
      body: OrientationBuilder(
          builder: (context, orientation) => orientation == Orientation.portrait
              ? Stack(
                  children: [
                    Container(
                      height: 210.0,
                      width: MediaQuery.of(context).size.width,
                      child: YoutubePlayer(
                        controller: _controller,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.7,
                            top: MediaQuery.of(context).size.height * 0.24),
                        child: Text(
                          '${min} : ${sec}',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ))
                  ],
                )
              : Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      height: 210.0,
                      width: MediaQuery.of(context).size.width,
                      child: YoutubePlayer(
                        controller: _controller,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.86,
                            top: MediaQuery.of(context).size.height * 0.44),
                        child: Text(
                          '${min} : ${sec}',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ))
                  ],
                )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
              timer!.cancel();
            } else {
              _controller.play();
              startTimer();
            }
          });
        },
        child:
            Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addtimer());
  }

  addtimer() {
    final addsecond = 1;
    setState(() {
      final seconds = duration.inSeconds + addsecond;
      duration = Duration(seconds: seconds);
    });
  }
}
