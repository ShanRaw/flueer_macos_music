import 'package:flutter/material.dart';
import 'components/exclusive_memory.dart';
import 'components/list_title.dart';
import 'components/new_song_list.dart';
import 'components/recommended_song _ist.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      color: Color(0xff252524),
      child: CustomScrollView(
        cacheExtent: 800,
        slivers: [
          SliverToBoxAdapter(
            child: ListTitle(
              title: '推荐歌单',
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          RecommendedSongList(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: ListTitle(
              title: '独家放送',
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          ExclusiveMemory(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: ListTitle(
              title: '最新音乐',
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          NewSongList(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
