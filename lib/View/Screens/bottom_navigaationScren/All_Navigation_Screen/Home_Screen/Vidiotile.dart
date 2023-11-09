import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Vidiotile extends StatefulWidget {
  const Vidiotile({super.key});

  @override
  State<Vidiotile> createState() => _VidiotileState();
}

class _VidiotileState extends State<Vidiotile> {
  late VideoPlayerController _controller;
  late Future _initiolize;
  int currntindex = 0;

  List<String> asetvidio = [
    'Assets/Vadioes/vadioone.mp4',
    // 'Assets/Vadioes/vadiotwo.mp4'
  ];
  List<VideoPlayerController> videoControllers = [];

  @override
  void initState() {
    super.initState();
    for (var astvidio in asetvidio) {
      _controller = VideoPlayerController.asset(astvidio);
    }
    _initiolize = _controller.initialize();
    _controller.setLooping(true);
    _controller.play();
    videoControllers.add(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    for (var cont in videoControllers) {
      cont.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: _initiolize,
        builder: (
          context,
          snapshot,
        ) {
          if (snapshot.connectionState == ConnectionState.done) {
            return VideoPlayer(_controller);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
