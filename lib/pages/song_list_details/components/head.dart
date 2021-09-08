import 'package:flutter/material.dart';
import 'package:music/models/automation/playlist_detail_response_entity.dart';
import 'package:music/state/music.dart';
import 'package:date_format/date_format.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:music/utils/image_deault.dart';
import 'package:provider/provider.dart';

class SongListDetailsHead extends StatelessWidget {
  final PlaylistDetailResponseEntity? data;

  SongListDetailsHead({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: data?.playlist?.coverImgUrl ?? '',
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
                        '歌单',
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
                    data?.playlist?.name ?? '',
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
                    child: data?.playlist?.creator?.avatarUrl != null
                        ? CachedNetworkImage(
                            imageUrl: data?.playlist?.creator?.avatarUrl ?? '',
                            width: 20,
                            height: 20,
                            fit: BoxFit.fill,
                            placeholder: (_, __) => ImageDefault.placeholder,
                            errorWidget: (_, __, ___) =>
                                ImageDefault.defaultImageWhite,
                          )
                        : SizedBox(
                            width: 20,
                            height: 20,
                          ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    data?.playlist?.creator?.nickname ?? '',
                    style: TextStyle(fontSize: 12, color: Colors.white60),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${formatDate(DateTime.fromMillisecondsSinceEpoch(data?.playlist?.createTime ?? 0), [
                          yyyy,
                          '-',
                          mm,
                          '-',
                          dd
                        ])}创建',
                    style: TextStyle(fontSize: 12, color: Colors.white60),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 140,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xffC9503C),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () => context
                                .read<MusicState>()
                                .plays(musics: data?.playlist?.tracks ?? []),
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
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: TextButton(
                            onPressed: () => context
                                .read<MusicState>()
                                .addAll(musics: data?.playlist?.tracks ?? []),
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
              RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text: '标签：',
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                      children: data?.playlist?.tags
                              ?.asMap()
                              .keys
                              .map((e) => TextSpan(
                                  text: data?.playlist?.tags?[e] ?? '',
                                  style: TextStyle(color: Color(0xff90B8E2)),
                                  children:
                                      data?.playlist?.tags?.length == e + 1
                                          ? []
                                          : [
                                              TextSpan(
                                                  text: ' / ',
                                                  style: TextStyle(
                                                      color: Colors.white60))
                                            ]))
                              .toList() ??
                          [])),
              SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                      children: [
                    TextSpan(text: '歌曲数：'),
                    TextSpan(text: '${data?.playlist?.trackCount ?? ''}'),
                    TextSpan(text: '    '),
                    TextSpan(text: '播放数：'),
                    TextSpan(text: '${data?.playlist?.playCount ?? ''}'),
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
                        TextSpan(text: '${data?.playlist?.description ?? ''}'),
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
