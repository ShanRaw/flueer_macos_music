import 'package:flutter/material.dart';
import 'package:music/components/song_item.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/playlist_detail_response_entity.dart';
import 'package:music/models/automation/search_entity.dart';
import 'package:music/utils/http.dart';

class SearchSongTabBody extends StatefulWidget {
  final String keyword;
  final int type;

  SearchSongTabBody({required this.keyword, required this.type});

  @override
  _SearchSongTabBodyState createState() => _SearchSongTabBodyState();
}

class _SearchSongTabBodyState extends State<SearchSongTabBody>
    with AutomaticKeepAliveClientMixin {
  List<SearchResultSongs> list = [];
  GlobalKey<RefreshIndicatorState> refresh = GlobalKey<RefreshIndicatorState>();

  Future getList() async {
    final res = SearchEntity().fromJson(await Http.api(
        api: Apis.search,
        params: {
          'keywords': widget.keyword,
          'type': widget.type,
          'limit': 30
        }));

    setState(() {
      list = res.result?.songs ?? [];
    });
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
    super.build(context);
    return RefreshIndicator(
        key: refresh,
        child: ListView(
          padding: EdgeInsets.all(15),
          children: list
              .asMap()
              .keys
              .map((index) => SongItem(
                    item: PlaylistDetailResponsePlaylistTracks().fromJson({
                      'name': list[index].name,
                      'ar': List<Map<String, dynamic>>.from(list[index]
                              .artists
                              ?.map((e) =>
                                  Map<String, dynamic>.from(e.toJson())) ??
                          []),
                      'al': Map<String, dynamic>.from(
                          list[index].album?.toJson() ?? {}),
                      'dt': list[index].duration,
                      'id': list[index].id
                    }),
                    index: index,
                  ))
              .toList(),
        ),
        onRefresh: getList);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
