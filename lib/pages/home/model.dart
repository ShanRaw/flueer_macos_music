import 'package:flutter/material.dart';
import 'package:music/pages/home/components/recommend_song_list/index.dart';

import 'index.dart';

mixin HomeRecommendationModel on State<HomePage> {
  GlobalKey<RefreshIndicatorState> refresh = GlobalKey<RefreshIndicatorState>();
  GlobalKey<RecommendSongListState> recommendSongListState =
      GlobalKey<RecommendSongListState>();

  Future onRefresh() async {
    await recommendSongListState.currentState?.getList();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      onRefresh();
    });
  }
}
