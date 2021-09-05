import 'package:flutter/material.dart';
import 'package:music/models/music_item.dart';
import 'package:music/pages/home/components/list_title.dart';
import 'package:music/components/song_list_item.dart';
import 'package:music/pages/home/state.dart';

import 'package:provider/provider.dart';

class RecommendSongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = context.watch<HomeState>().recommendationList;
    return Column(
      children: [
        ListTitle(
          title: '推荐歌单',
        ),
        Wrap(
          runSpacing: 18,
          spacing: 18,
          children: list
              .map((e) => SongListItem(
                    item: MusicItem(
                        id: e.id,
                        name: e.name,
                        playCount: e.playCount,
                        image: e.picUrl),
                  ))
              .toList(),
        )
      ],
    );
  }
}
