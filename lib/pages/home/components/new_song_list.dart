import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/models/automation/playlist_detail_response_entity.dart';
import 'package:music/models/player_item.dart';
import 'package:music/state/music.dart';
import 'package:music/utils/image_deault.dart';
import 'package:provider/provider.dart';

import '../state.dart';

class NewSongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = context.watch<HomeState>().personalizedNewsong;
    return SliverGrid.count(
      crossAxisCount: 2,
      childAspectRatio: 480 / 60,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      children: list
          .asMap()
          .keys
          .map((index) => InkWell(
              onDoubleTap: () {
                context.read<MusicState>().play(
                    //     music: PlaylistDetailResponsePlaylistTracks().fromJson({
                    //   'id': list[index].id,
                    //   'dt': list[index].song?.duration,
                    //   'name': list[index].name,
                    //   'al': list[index].song?.album?.toJson() ?? {},
                    //   'ar': List<Map<String, dynamic>>.from(
                    //       list[index].song?.artists?.map((e) => e.toJson()) ??
                    //           [])
                    // })
                    music: PlayerItem(
                        img: list[index].song?.album?.picUrl ?? '',
                        name: list[index].name ?? '',
                        author: list[index]
                                .song
                                ?.artists
                                ?.map((e) => e.name)
                                .join(' ') ??
                            '',
                        duration: list[index].song?.duration ?? 0,
                        url:
                            'https://music.163.com/song/media/outer/url?id=${list[index].id}.mp3',
                        id: list[index].song?.id ?? 0));
              },
              child: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: CachedNetworkImage(
                        imageUrl: list[index].picUrl ?? '',
                        placeholder: (_, __) => ImageDefault.placeholder,
                        errorWidget: (_, __, ___) =>
                            ImageDefault.defaultImageWhite,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    (index + 1).toString().padLeft(2, '0'),
                    style: TextStyle(fontSize: 12, color: Color(0xff515051)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: list[index].name ?? '',
                            children: [
                              TextSpan(
                                  text: list[index].song?.alias?.length == 0
                                      ? ''
                                      : '（${list[index].song?.alias?.join(' ') ?? ''}）',
                                  style: TextStyle(color: Color(0xff646563)))
                            ],
                            style:
                                TextStyle(fontSize: 14, color: Colors.white60)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        list[index]
                                .song
                                ?.artists
                                ?.map((e) => e.name)
                                .join(' ') ??
                            '',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff888888)),
                      ),
                    ],
                  ))
                ],
              )))
          .toList(),
    );
  }
}
