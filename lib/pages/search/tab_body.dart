import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/components/song_item.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/playlist_detail_response_entity.dart';
import 'package:music/models/automation/search_entity.dart';
import 'package:music/models/automation/search_song_list_entity.dart';
import 'package:music/utils/http.dart';

class SearchTabBody extends StatefulWidget {
  final String keyword;
  final int type;

  SearchTabBody({required this.keyword, required this.type});

  @override
  _SearchTabBodyState createState() => _SearchTabBodyState();
}

class _SearchTabBodyState extends State<SearchTabBody>
    with AutomaticKeepAliveClientMixin {
  List<SearchResultSongs> list = [];

  getList() async {
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

  Widget getChildrenType({SearchResultSongs? song, int? index,SearchSongListResultPlaylists? songList}) {
    switch (widget.type) {
      case 1:
        return SongItem(
          item: PlaylistDetailResponsePlaylistTracks().fromJson({
            'name': song?.name,
            'ar': List<Map<String, dynamic>>.from(song?.artists
                    ?.map((e) => Map<String, dynamic>.from(e.toJson())) ??
                []),
            'al': Map<String, dynamic>.from(song?.album?.toJson() ?? {}),
            'dt': song?.duration,
            'id': song?.id
          }),
          index: index ?? 0,
        );
      case 100:
        return Container();
      case 1000:
        return SizedBox(
          width: double.infinity,
          height: 60,
          child: TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            onPressed: () {},
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: CachedNetworkImage(
                    imageUrl: '',
                  ),
                )
              ],
            ),
          ),
        );
      default:
        return Container();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      this.getList();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      padding: EdgeInsets.all(15),
      children: list
          .asMap()
          .keys
          .map((e) => getChildrenType(song: list[e], index: e))
          .toList(),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
