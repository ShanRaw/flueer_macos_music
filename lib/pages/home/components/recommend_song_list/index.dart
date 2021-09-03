import 'package:flutter/material.dart';
import 'package:music/pages/home/components/list_title/index.dart';
import 'package:music/pages/home/components/recommend_song_list/song_list_item.dart';

import 'model.dart';

class RecommendSongList extends StatefulWidget {
  RecommendSongList({Key? key}) : super(key: key);

  @override
  RecommendSongListState createState() => RecommendSongListState();
}

class RecommendSongListState extends State<RecommendSongList>
    with RecommendSongListModel {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTitle(
          title: '推荐歌单',
        ),
        Wrap(
          runSpacing: 18,
          spacing: 18,
          children: list
                  ?.map((e) => SongListItem(
                        item: e,
                      ))
                  .toList() ??
              [],
        )
      ],
    );
  }
}
