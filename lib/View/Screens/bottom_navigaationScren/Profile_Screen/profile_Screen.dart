import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';
import 'package:tiktk/View/Screens/bottom_navigaationScren/Profile_Screen/edit_Profile.dart';
import 'package:tiktk/View/Screens/bottom_navigaationScren/Profile_Screen/profile_Video.dart';
import 'package:tiktk/View/widget/Buttons.dart';
import 'package:tiktk/View/widget/profilebuton.dart';
import 'package:video_player/video_player.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backroundcolor,
        centerTitle: true,
        title: Text('username'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_rounded))],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1695653422557-3b85c1d6d061?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHx8'),
              ),
              Text('@ubaidullah'),
              SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Follwing',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Follwers',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Likes',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  profileButtons(
                    tittle: 'Edit Profile',
                    ontap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return EditProfilescreen();
                        },
                      ));
                    },
                    color: bordercolor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  profileButtons(
                    tittle: 'Share Profile',
                    ontap: () {},
                    color: bordercolor,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("Welcome to my profile"),
              SizedBox(
                height: 10,
              ),
              Text('add camera'),
              SizedBox(
                height: 15,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 9.0),
                itemBuilder: (context, index) {
                  String pathv = 'Assets/Vadioes/vadioone.mp4';
                  VideoPlayerController videoPlayerController =
                      VideoPlayerController.asset(pathv);

                  ChewieController chewieController = ChewieController(
                    videoPlayerController: videoPlayerController,
                    aspectRatio: 1.0,

                    autoPlay:
                        false, // Set this to true if you want videos to play automatically
                    looping: false,
                  );

                  // return Chewie(controller: chewieController);

                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ProfileVideoes(imagepath: pathv);
                        },
                      ));
                    },
                    // child:  Container(
                    // color: Colors.green,
                    child: Chewie(controller: chewieController),
                  );
                  // return Container(
                  //   color: Colors.green,
                  //   child: Center(
                  //     child: Text("video $index"),
                  //   ),
                  // );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
