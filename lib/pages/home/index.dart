import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/home/state.dart';
import 'components/exclusive_memory.dart';
import 'components/list_title.dart';
import 'package:provider/provider.dart';

import 'components/new_song_list.dart';
import 'components/recommended_song _ist.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      if (context.read<HomeState>().recommendationList.length == 0) {
        context.read<HomeState>().refresh.currentState?.show();
      } else {
        context.read<HomeState>().onRefresh();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        key: context.read<HomeState>().refresh,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(),
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
                  height: 15,
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
                  height: 15,
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
            ],
          ),
        ),
        onRefresh: context.read<HomeState>().onRefresh);
  }
}
