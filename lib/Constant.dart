import 'package:flutter/material.dart';
import 'package:tiktk/View/Screens/bottom_navigaationScren/All_Navigation_Screen/Home_Screen/Home_Screen.dart';
import 'package:tiktk/View/Screens/bottom_navigaationScren/Profile_Screen/profile_Screen.dart';

const backroundcolor = Color.fromARGB(255, 7, 7, 7);
var buttoncolor = Colors.red[500];
const bordercolor = Colors.grey;

const pages = [
  HomeScreen(),
  Text("Search"),
  Text("Add"),
  Text("Inbox"),
  ProfileScreen(),
];
