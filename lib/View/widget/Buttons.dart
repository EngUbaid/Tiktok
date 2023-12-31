import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';

class Buttons extends StatelessWidget {
  final String tittle;
  final ontap;
  final color;
  final int wedth;
  const Buttons(
      {super.key,
      required this.tittle,
      required this.ontap,
      required this.color,
      required this.wedth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 90,
        height: 50,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: bordercolor)),
        child: Center(
          child: Text(
            tittle,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
