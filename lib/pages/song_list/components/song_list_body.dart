import 'package:flutter/material.dart';
import 'package:music/models/music_item.dart';
import 'package:music/components/song_list_item.dart';
import 'package:music/pages/song_list/state.dart';
import 'package:provider/provider.dart';

class SongListBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final index = context.read<SongListSate>().active;
    final mockList = context.read<SongListSate>().mockList;
    final tags = context.read<SongListSate>().tags;
    final nowList = context.read<SongListSate>().listMap[tags[index].id];
    final list = nowList ?? mockList;
    return ListView(
      padding: EdgeInsets.zero,
      itemExtent: (250 + 18) * (list.length / 5),
      // semanticChildCount: (list.length / 5).ceil(),
      children: [
        Wrap(
          spacing: 18,
          children: list
              .map((e) => SongListItem(
                    item: MusicItem(
                        name: e.name,
                        image: e.coverImgUrl,
                        playCount: e.playCount,
                        id: e.id),
                  ))
              .toList(),
        )
      ],
    );
  }
}
