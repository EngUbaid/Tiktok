import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';

class Textinputfield extends StatelessWidget {
  final TextEditingController controller;
  final String labeltext;
  final String hinttext;
  final IconData icon;
  bool isobsecure = false;
 Textinputfield({super.key, required this.controller, required this.labeltext,required this.hinttext,required this.icon,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller ,
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hinttext,
        prefixIcon: Icon(icon),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: bordercolor
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: bordercolor
          )
        ),
      ),
      obscureText: isobsecure,
    );
  }
}