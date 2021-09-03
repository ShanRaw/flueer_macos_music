import 'package:flutter/material.dart';
import 'components/recommend_song_list/index.dart';
import 'model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomeRecommendationModel {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        key: refresh,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            //推荐歌单
            RecommendSongList(
              key: recommendSongListState,
            ),
          ],
        ),
        onRefresh: onRefresh);
  }
}
