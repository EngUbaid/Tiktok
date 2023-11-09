import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';

class Buttons extends StatelessWidget {
  final String tittle;
  final ontap;
  final color;
  const Buttons(
      {super.key,
      required this.tittle,
      required this.ontap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
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
