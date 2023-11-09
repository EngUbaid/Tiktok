// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({
//     super.key,
//   });

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   late VideoPlayerController _controller;
//   List<String> assetvadioes = [
//     'Assets/Vadioes/vadioone.mp4',
//     'Assets/Vadioes/vadiotwo.mp4',
//   ];
//   List<VideoPlayerController> videoControllers = [];

//   @override
//   void initState() {
//     super.initState();
//     for (var assetvadio in assetvadioes) {
//       _controller = VideoPlayerController.asset(assetvadio)
//         ..initialize().then((_) {
//           setState(() {});
//         })
//         ..addListener(() => setState(() {}))
//         ..setLooping(true);
//       videoControllers.add(_controller);
//     }
//   }
//   @override
//   void dispose() {
//     super.dispose();
//     for (var controller in videoControllers) {
//       controller.dispose();
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView.builder(
//           itemCount: assetvadioes.length,
//           itemBuilder: (context, index) {
//             return Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height / 0.75,
//                 child: VideoPlayer(videoControllers[index]));
//           },
//         ),
//         floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               for (var controller in videoControllers) {
//                 if (controller.value.isPlaying) {
//                   controller.pause();
//                 } else {
//                   controller.play();
//                 }
//               }
//             },
//             child: Icon(
//               videoControllers.any((controller) => controller.value.isPlaying)
//                   ? Icons.pause
//                   : Icons.play_arrow,
//             )));
//   }
// }

import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';
import 'package:tiktk/View/Screens/bottom_navigaationScren/All_Navigation_Screen/Home_Screen/HomePagesidebar.dart';
import 'package:tiktk/View/Screens/bottom_navigaationScren/All_Navigation_Screen/Home_Screen/Vidiotile.dart';
import 'package:tiktk/View/Screens/bottom_navigaationScren/All_Navigation_Screen/Home_Screen/vdio_Detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isfollowing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backroundcolor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _isfollowing = true;
                });
              },
              child: Text(
                "Following",
                style: TextStyle(
                    color: _isfollowing ? Colors.white : Colors.grey,
                    fontSize: _isfollowing ? 18 : 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          const  SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _isfollowing = false;
                });
              },
              child: Text(
                "For you",
                style: TextStyle(
                    color: !_isfollowing ? Colors.white : Colors.grey,
                    fontSize: !_isfollowing ? 18 : 14,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      body: PageView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
             Vidiotile(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                  
                    child: VaidioDetail(),
                  )),
                  Expanded(child: Container(
                    height: MediaQuery.of(context).size.height / 1.76,                 
                    child: HomepageSidebar(),
                  ))

                ],
              )

            ],
          );
        },
      ),
    );
  }
}
