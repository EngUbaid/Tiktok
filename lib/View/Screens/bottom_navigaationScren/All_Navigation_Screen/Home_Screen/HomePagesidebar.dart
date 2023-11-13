import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';
import 'package:tiktk/View/Screens/bottom_navigaationScren/All_Navigation_Screen/Home_Screen/User_Profile/user_profile_Screen.dart';

class HomepageSidebar extends StatefulWidget {
  const HomepageSidebar({super.key});

  @override
  State<HomepageSidebar> createState() => _HomepageSidebarState();
}

class _HomepageSidebarState extends State<HomepageSidebar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  TextStyle style = TextStyle(color: Colors.white, fontSize: 15);
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    _animationController.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _Profile(),
          _Sidebarlikes(
              Icon(
                Icons.favorite,
                size: 60,
              ),
              "500",
              style),
          _Sidebarlikes(const Icon(Icons.comment), "1200", style),
          _Sidebarlikes(Icon(Icons.save_rounded), "500", style),
          _Sidebarlikes(Icon(Icons.share_sharp), "2400", style),
          AnimatedBuilder(
            animation: _animationController,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(26),
                    // image: DecorationImage(
                    //   fit: BoxFit.cover,
                    //   image: NetworkImage('https://images.unsplash.com/photo-1699187129235-442d3f1ac069?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyN3x8fGVufDB8fHx8fA%3D%3D'))
                  ),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1699187129235-442d3f1ac069?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyN3x8fGVufDB8fHx8fA%3D%3D'),
                  ),
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1699147790292-257de5aeed1f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHx8fA%3D%3D"),
                )
              ],
            ),
            builder: (context, child) {
              return Transform.rotate(
                angle: 2 * pi * _animationController.value,
                child: child,
              );
            },
          )
        ],
      ),
    );
  }

  _Sidebarlikes(Icon iconname, String label, TextStyle style) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconname.icon,
              size: 36,
            )),
        // SizedBox(
        //   height: 3,
        // ),
        Text(
          label,
          style: style,
        )
      ],
    );
  }

  _Profile() {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return UserProfile();
          },
        ));
      },
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D"),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: -10,
              child: CircleAvatar(
                radius: 14,
                backgroundColor: buttoncolor,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 15,
                      color: Colors.white,
                    )),
              ),
            ),
          ]),
    );
  }
}
