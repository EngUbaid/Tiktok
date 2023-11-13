import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';

class profileButtons extends StatelessWidget {
  final String tittle;
  final ontap;
  final color;
  const profileButtons(
      {super.key,
      required this.tittle,
      required this.ontap,
      required this.color,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 90,
        height: 40,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: bordercolor)),
        child: Center(
          child: Text(
            tittle,
            style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
