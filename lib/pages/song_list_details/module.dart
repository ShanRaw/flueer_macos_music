import 'package:flutter/material.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/playlist_detail_response_entity.dart';
import 'package:music/models/player_item.dart';
import 'package:music/state/music.dart';
import 'package:music/utils/http.dart';
import 'index.dart';
import 'package:provider/provider.dart';

mixin SongListDetailsModule on State<SongListDetailsPage> {
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

  playAll() {
    context.read<MusicState>().plays(
        musics: List<
            PlayerItem>.from(data?.playlist?.tracks?.map((e) => PlayerItem(
                img: e.al?.picUrl ?? '',
                name: e.name ?? '',
                author: e.ar?.map((e) => e.name).join(' ') ?? '',
                duration: e.dt ?? 0,
                url:
                    'https://music.163.com/song/media/outer/url?id=${e.id}.mp3',
                id: e.id ?? 0)) ??
            []));
  }

  addAll() {
    context.read<MusicState>().addAll(
        musics: List<
            PlayerItem>.from(data?.playlist?.tracks?.map((e) => PlayerItem(
                img: e.al?.picUrl ?? '',
                name: e.name ?? '',
                author: e.ar?.map((e) => e.name).join(' ') ?? '',
                duration: e.dt ?? 0,
                url:
                    'https://music.163.com/song/media/outer/url?id=${e.id}.mp3',
                id: e.id ?? 0)) ??
            []));
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
