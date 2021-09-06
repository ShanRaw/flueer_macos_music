import 'package:flutter/material.dart';
import 'package:music/components/song_list_item.dart';
import 'package:music/models/music_item.dart';
import 'package:provider/provider.dart';

import '../state.dart';
class RecommendedSongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final recommendationList = context.watch<HomeState>().recommendationList;
    return SliverGrid.count(
      crossAxisCount: 5,
      mainAxisSpacing: 18,
      crossAxisSpacing: 18,
      childAspectRatio: 195 / 250,
      children: recommendationList
          .map((e) => SongListItem(
        item: MusicItem(
            id: e.id,
            name: e.name,
            playCount: e.playCount,
            image: e.picUrl),
      ))
          .toList(),
    );
  }
}
