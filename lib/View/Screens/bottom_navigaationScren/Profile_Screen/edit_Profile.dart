import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';

class EditProfilescreen extends StatefulWidget {
  const EditProfilescreen({super.key});

  @override
  State<EditProfilescreen> createState() => _EditProfilescreenState();
}

class _EditProfilescreenState extends State<EditProfilescreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backroundcolor,
        centerTitle: true,
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1695653420624-4a23b2ffc77c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8fA%3D%3D'),
                      ),
                      Text("Change Profile")
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1695653420624-4a23b2ffc77c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8fA%3D%3D'),
                      ),
                      Text("Change video")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("about You"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Name"), Text("ubaid")],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("usernae"), Text("username")],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Bio"), Text("add bio")],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Social"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("instagram"), Text("add instagram link")],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("youtube"), Text("add youtube link")],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Change display order"),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Add yours"),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more))
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  editdata(String name, String username, String bio) {
    return Column(
      children: [
        Row(
          children: [Text(name), Text(username), Text(bio)],
        )
      ],
    );
  }
}
