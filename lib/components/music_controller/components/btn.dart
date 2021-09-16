import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music/state/music.dart';
import 'package:provider/provider.dart';

class MusicControllerBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final playState = context.watch<MusicState>().playState;
    return Container(
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Container(
        height: 60,
        color: Color(0xff252425),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child: TextButton(
                onPressed: context.read<MusicState>().playPre,
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Icon(
                  Icons.chevron_left,
                  color: Color(0xffC24B39),
                  size: 30,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 35,
              height: 35,
              child: TextButton(
                onPressed: context.read<MusicState>().playOrPause,
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Color(0xffC24B39)),
                  child: Icon(
                    playState == PlayerState.PLAYING
                        ? Icons.pause
                        : Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 30,
              height: 30,
              child: TextButton(
                onPressed: context.read<MusicState>().playNext,
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Icon(
                  Icons.chevron_right,
                  color: Color(0xffC24B39),
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
