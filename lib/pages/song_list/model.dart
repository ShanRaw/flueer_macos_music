import 'package:flutter/material.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/fine_song_list_response_entity.dart';
import 'package:music/models/automation/tag_response_entity.dart';
import 'package:music/utils/http.dart';

import 'index.dart';

mixin SongListPageModel on State<SongListPage> {
  //精品歌单数据
  FineSongListResponsePlaylists? fine;

  //标签列表
  List<TagResponseTags> tags = [
    TagResponseTags().fromJson({'name': '全部'})
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      getTags();
      getFineSongList();
    });
  }

  //后去标签数据
  void getTags() async {
    final res =
        TagResponseEntity().fromJson(await Http.api(api: Apis.playlistHot));
    setState(() {
      tags.addAll(res.tags ?? []);
    });
  }

  //获取精品歌单的数据

  void getFineSongList({TagResponseTags? item}) async {
    final res = FineSongListResponseEntity().fromJson(await Http.api(
        api: Apis.topPlaylistHighquality,
        params: {'cat': item?.name ?? '', 'limit': 1}));
    setState(() {
      fine = res.playlists?.length == 0?null:res.playlists?[0];
    });
  }

  void changeTab(int index) {
    getFineSongList(item: tags[index]);
  }
}
