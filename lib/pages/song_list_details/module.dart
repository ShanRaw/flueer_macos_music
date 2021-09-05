import 'package:flutter/material.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/playlist_detail_response_entity.dart';
import 'package:music/utils/http.dart';
import 'index.dart';

mixin SongListDetailsModule on State<SongListDetailsPage> {
  GlobalKey<RefreshIndicatorState> refresh = GlobalKey<RefreshIndicatorState>();

  PlaylistDetailResponseEntity? data;

  Future onRefresh() async {
    await getDetail();
  }

  getDetail() async {
    final id = ModalRoute.of(context)?.settings.arguments;
    final res = PlaylistDetailResponseEntity().fromJson(
        await await Http.api(api: Apis.playlistDetail, params: {'id': id}));
    setState(() {
      data = res;
    });
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
