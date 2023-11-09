import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class VaidioDetail extends StatefulWidget {
  const VaidioDetail({super.key});

  @override
  State<VaidioDetail> createState() => _VaidioDetailState();
}

class _VaidioDetailState extends State<VaidioDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children:  [
          Text(
            "@ubaidullah",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        const  SizedBox(
            height: 10,
          ),
        const  ExpandableText(
            "This is vidio about nature this is one of the most beautiful place in pakistan  dh  cnvnslvks;v svlvklvjsjcposhjnvvjsovn,vsipgjruhlcansfwpdhiasklcnvsifgfihkczbcnzvjdighbasklxmchfhscas;mlgjiofhc",
            expandText: "see more",
            collapseText: "less",
            expandOnTextTap: true,
            collapseOnTextTap: true,
            maxLines: 2,
            linkColor: Colors.grey,
          ),
        const  SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                CupertinoIcons.music_note_2,
                size: 15,
                color: Colors.white,
              ),
             const SizedBox(
                width: 8,
              ),
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width / 2,
                child: Marquee(
                  text: 'Audion song name  .  ',
                  velocity: 8,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
