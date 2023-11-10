import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';
import 'package:tiktk/View/Screens/Auth/SignUp_Screnn.dart';
import 'package:tiktk/View/Screens/bottom_navigaationScren/All_Navigation_Screen/navigation_Bar.dart';
import 'package:tiktk/View/Screens/bottom_navigaationScren/Profile_Screen/profile_Screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tik Tok ",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backroundcolor
      ),
      home: ProfileScreen(),
    );
  }
}