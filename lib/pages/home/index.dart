import 'package:flutter/material.dart';
import 'package:music/pages/home/state.dart';
import 'components/exclusive_memory.dart';
import 'components/list_title.dart';
import 'components/new_song_list.dart';
import 'components/recommended_song _ist.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<HomeState>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
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
