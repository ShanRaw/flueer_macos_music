import 'package:flutter/material.dart';
import 'package:music/components/music_controller/components/btn.dart';
import 'package:music/components/music_controller/components/info.dart';
import 'package:music/components/music_controller/components/slider.dart';

class MusicController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Color(0xff252425), boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.2),
            offset: Offset(0, -1),
            blurRadius: 7),
      ]),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          MusicControllerInfo(),
          MusicControllerSlider(),
          MusicControllerBtn(),
        ],
      ),
    );
  }
}
