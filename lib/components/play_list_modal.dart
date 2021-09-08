import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music/state/music.dart';
import 'package:provider/provider.dart';
import 'package:music/utils/int_expansion.dart';

class PlayListModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final playList = context.watch<MusicState>().playList;
    final music = context.watch<MusicState>().music;
    final playState = context.watch<MusicState>().playState;
    final int playMusicIndex =
        playList.indexWhere((element) => element.id == music?.id);
    return GestureDetector(
      onTap: context.read<MusicState>().hidePlayListAction,
      behavior: HitTestBehavior.opaque,
      child: Container(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 400,
          height: 800 - 50 - 60,
          color: Color(0xff353636),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  '当前播放',
                  style: TextStyle(color: Color(0xffB8B9B8), fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '总${playList.length}首',
                      style: TextStyle(fontSize: 12, color: Color(0xff5E5E5E)),
                    ),
                    TextButton(
                        onPressed: context.read<MusicState>().clearAll,
                        child: Text('清空列表'))
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                itemExtent: 30,
                semanticChildCount: playList.length,
                padding: EdgeInsets.zero,
                children: playList
                    .asMap()
                    .keys
                    .map((index) => GestureDetector(
                          onDoubleTap: () => context
                              .read<MusicState>()
                              .play(music: playList[index]),
                          child: Container(
                            height: 30,
                            color: index % 2 == 0
                                ? Color(0xff373637)
                                : Color(0xff3B3A3A),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                index == playMusicIndex
                                    ? (playState == PlayerState.PLAYING
                                        ? Icon(
                                            Icons.play_arrow_rounded,
                                            size: 12,
                                            color: Colors.red,
                                          )
                                        : Icon(
                                            Icons.pause,
                                            size: 12,
                                            color: Colors.red,
                                          ))
                                    : SizedBox(
                                        width: 12,
                                      ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Text(
                                  '${playList[index].name ?? ''}',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xffB8B7B7)),
                                )),
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                      '${playList[index].ar?.map((e) => e.name).join(',')}',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffB8B7B7))),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 50,
                                  child: Text(
                                      '${playList[index].dt?.toHourMinute ?? '00:00'}',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffB8B7B7))),
                                ),
                                SizedBox(
                                  width: 30,
                                  child: TextButton(
                                    onPressed: () => context
                                        .read<MusicState>()
                                        .remove(playList[index]),
                                    child: Icon(
                                      Icons.close,
                                      size: 12,
                                      color: Colors.white60,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
