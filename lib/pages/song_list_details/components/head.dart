import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:music/utils/image_deault.dart';

class CustomListHeadModel {
  final String img;
  final String name;
  final String avatarUrl;
  final String nickname;
  final String tags;
  final int createTime;
  final int trackCount;
  final int playCount;
  final String description;
  final SongType type;

  CustomListHeadModel({
    required this.name,
    required this.img,
    required this.type,
    required this.nickname,
    required this.tags,
    required this.playCount,
    required this.trackCount,
    required this.createTime,
    required this.avatarUrl,
    required this.description,
  });
}

enum SongType { SONG, DJ }

class SongListDetailsHead extends StatelessWidget {
  final CustomListHeadModel data;
  final VoidCallback? playAll;
  final VoidCallback? addAll;

  SongListDetailsHead({required this.data, this.playAll, this.addAll});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      height: 260,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: data.img,
              width: 200,
              height: 200,
              fit: BoxFit.fill,
              placeholder: (context, url) => ImageDefault.placeholder,
              errorWidget: (_, __, ___) => ImageDefault.defaultImageWhite,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffE5624B)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        data.type == SongType.SONG ? '歌单' : '电台',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xffE5624B)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    data.name,
                    style: TextStyle(fontSize: 24, color: Colors.white60),
                  ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: data.avatarUrl,
                      width: 20,
                      height: 20,
                      fit: BoxFit.fill,
                      placeholder: (_, __) => ImageDefault.placeholder,
                      errorWidget: (_, __, ___) =>
                          ImageDefault.defaultImageWhite,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    data.nickname,
                    style: TextStyle(fontSize: 12, color: Colors.white60),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  data.type == SongType.SONG
                      ? Text(
                          '${formatDate(DateTime.fromMillisecondsSinceEpoch(data.createTime), [
                                yyyy,
                                '-',
                                mm,
                                '-',
                                dd
                              ])}创建',
                          style: TextStyle(fontSize: 12, color: Colors.white60),
                        )
                      : Container(),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 160,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xffC9503C),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: playAll,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.play_circle_outline,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '播放全部',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: addAll,
                          child: SizedBox(
                            height: 30,
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '标签：${data.tags}',
                style: TextStyle(fontSize: 12, color: Colors.white60),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                      children: [
                    TextSpan(
                        text: '${data.type == SongType.SONG ? '歌曲数' : '作品数'}：'),
                    TextSpan(text: '${data.trackCount}'),
                    TextSpan(text: '    '),
                    TextSpan(
                        text: '${data.type == SongType.SONG ? '播放数' : '分享'}：'),
                    TextSpan(text: '${data.playCount}'),
                  ])),
              SizedBox(
                height: 10,
              ),
              RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                      children: [
                        TextSpan(text: '简介：'),
                        TextSpan(text: '${data.description}'),
                      ]))
            ],
          )),
          SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}
