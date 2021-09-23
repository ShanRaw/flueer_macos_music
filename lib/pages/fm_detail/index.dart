import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/components/custom_sliver_persistent_header_delegate.dart';
import 'package:music/components/pagination.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/dj_detail_entity.dart';
import 'package:music/models/automation/dj_hot_entity.dart';
import 'package:music/models/automation/dj_program_entity.dart';
import 'package:music/models/automation/playlist_detail_response_entity.dart';
import 'package:music/models/automation/song_url_entity.dart';
import 'package:music/models/player_item.dart';
import 'package:music/pages/song_list_details/components/head.dart';
import 'package:music/pages/song_list_details/components/song_list_tab.dart';
import 'package:music/state/music.dart';
import 'package:music/utils/http.dart';
import 'package:music/utils/image_deault.dart';
import 'package:music/utils/sys_expansion.dart';
import 'package:provider/provider.dart';

class FmDetailPage extends StatefulWidget {
  @override
  _FmDetailPageState createState() => _FmDetailPageState();
}

class _FmDetailPageState extends State<FmDetailPage> {
  DjDetailData? data;
  GlobalKey<RefreshIndicatorState> refresh = GlobalKey<RefreshIndicatorState>();
  List<DjProgramPrograms> list = [];

  int size = 30;
  int current = 1;
  int total = 1;

  Future getData() async {
    final item = ModalRoute.of(context)?.settings.arguments as DjHotDjRadios;
    final res = DjDetailEntity()
        .fromJson(await Http.api(api: Apis.djDetail, params: {'rid': item.id}));
    setState(() {
      data = res.data;
    });
  }

  Future getList(int index) async {
    final item = ModalRoute.of(context)?.settings.arguments as DjHotDjRadios;
    final res = DjProgramEntity().fromJson(await Http.api(
        api: Apis.djProgram,
        params: {
          'rid': item.id,
          'offset': (index - 1) * size,
          'limit': size,
          'asc': false
        }));
    setState(() {
      current = index;
      total = ((res.count ?? 0) / size).ceil();
      list = res.programs ?? [];
    });
  }

  Future onRefresh() async {
    await Future.wait([
      getData(),
      getList(1),
    ]);
  }

  play(DjProgramPrograms item) async {
    final res = SongUrlEntity().fromJson(await Http.api(
        api: Apis.songUrl, params: {'id': item.mainSong?.id ?? 0}));
    if (res.code != 200 || res.data?.length == 0) {
      return;
    }
    context.read<MusicState>().play(
        music: PlayerItem(
            img: item.coverUrl ?? '',
            name: item.name ?? '',
            author: data?.name ?? '',
            duration: item.duration ?? 0,
            url: res.data![0].url ?? '',
            id: item.id ?? 0));
  }

  //获取歌曲播放列表
  Future<List<PlayerItem>> getSongs() async {
    List<PlayerItem> songs = [];
    final res = SongUrlEntity().fromJson(await Http.api(
        api: Apis.songUrl,
        params: {'id': list.map((e) => e.mainSong?.id ?? 0).join(',')}));
    if (res.code != 200 || res.data?.length == 0) {
      return songs;
    }
    list.forEach((e) {
      final url =
          res.data?.firstWhere((element) => element.id == e.mainSong?.id).url;
      songs.add(PlayerItem(
          img: e.coverUrl ?? '',
          name: e.name ?? '',
          author: data?.name ?? '',
          duration: e.duration ?? 0,
          url: url ?? '',
          id: e.id ?? 0));
    });
    return songs;
  }

  playAll() async {
    context.read<MusicState>().plays(musics: await getSongs());
  }

  addAll() async {
    context.read<MusicState>().addAll(musics: await getSongs());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      refresh.currentState?.show();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252524),
      body: RefreshIndicator(
        key: refresh,
        onRefresh: onRefresh,
        child: CustomScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: SongListDetailsHead(
                data: CustomListHeadModel(
                    name: data?.name ?? '',
                    img: data?.picUrl ?? '',
                    type: SongType.DJ,
                    nickname: data?.dj?.nickname ?? '',
                    tags: data?.category ?? '',
                    playCount: data?.shareCount ?? 0,
                    trackCount: data?.programCount ?? 0,
                    createTime: data?.createTime ?? 0,
                    avatarUrl: data?.dj?.avatarUrl ?? '',
                    description: data?.desc ?? ''),
                playAll: playAll,
                addAll: addAll,
              ),
            ),
            SliverPersistentHeader(
                pinned: true,
                delegate: CustomSliverPersistentHeaderDelegate(
                    child: SongListTab(
                      type: SongType.DJ,
                    ),
                    height: 50)),
            SliverList(
                delegate: SliverChildListDelegate(list
                    .map(
                      (e) => SizedBox(
                        height: 65,
                        child: InkWell(
                            onDoubleTap: () => play(e),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 7.5, horizontal: 30),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: CachedNetworkImage(
                                      imageUrl: e.coverUrl ?? '',
                                      placeholder: (_, __) =>
                                          ImageDefault.placeholder,
                                      errorWidget: (_, __, ___) =>
                                          ImageDefault.defaultImageWhite,
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Text(
                                    e.name ?? '',
                                    style: TextStyle(color: Colors.white60),
                                  )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.play_arrow_rounded,
                                          size: 12,
                                          color: Colors.white30,
                                        ),
                                        Text(
                                          ' ${e.listenerCount ?? 0}',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white30),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.favorite_outline_rounded,
                                          size: 12,
                                          color: Colors.white30,
                                        ),
                                        Text(
                                          ' ${e.likedCount ?? 0}',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white30),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 60,
                                    child: Text(
                                      '${e.duration?.toHourMinute ?? '00:00'}',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white30),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    )
                    .toList())),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Pagination(
          current: current,
          total: total,
          onChange: (int index) {
            getList(index);
          },
        ),
      ),
    );
  }
}
