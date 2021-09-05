import 'package:flutter/material.dart';
import 'package:music/pages/home/state.dart';
import 'components/recommend_song_list.dart';
import 'package:provider/provider.dart';

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
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        key: context.read<HomeState>().refresh,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            //推荐歌单
            RecommendSongList(),
          ],
        ),
        onRefresh: context.read<HomeState>().onRefresh);
  }
}
