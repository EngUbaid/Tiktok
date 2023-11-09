import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';

class Allnavigation extends StatefulWidget {
  const Allnavigation({super.key});

  @override
  State<Allnavigation> createState() => _AllnavigationState();
}

class _AllnavigationState extends State<Allnavigation> {
  var pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: buttoncolor,
          unselectedItemColor: Colors.white,
          currentIndex: pageindex,
          onTap: (value) {
            setState(() {
              pageindex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 35,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  size: 35,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.inbox,
                  size: 35,
                ),
                label: "Inbox"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 35,
                ),
                label: "Person"),
          ]),
      body: pages[pageindex],
    );
  }
}
