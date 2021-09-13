import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/components/song_item.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/playlist_detail_response_entity.dart';
import 'package:music/models/automation/search_entity.dart';
import 'package:music/models/automation/search_song_list_entity.dart';
import 'package:music/utils/child_navigator.dart';
import 'package:music/utils/http.dart';
import 'package:music/utils/image_deault.dart';

class SearchSongListTabBody extends StatefulWidget {
  final String keyword;
  final int type;

  SearchSongListTabBody({required this.keyword, required this.type});

  @override
  _SearchSongListTabBodyState createState() => _SearchSongListTabBodyState();
}

class _SearchSongListTabBodyState extends State<SearchSongListTabBody>
    with AutomaticKeepAliveClientMixin {
  List<SearchSongListResultPlaylists> list = [];
  GlobalKey<RefreshIndicatorState> refresh = GlobalKey<RefreshIndicatorState>();

  Future getList() async {
    final res = SearchSongListEntity().fromJson(await Http.api(
        api: Apis.search,
        params: {
          'keywords': widget.keyword,
          'type': widget.type,
          'limit': 30
        }));

    setState(() {
      list = res.result?.playlists ?? [];
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
              .map((e) => SizedBox(
                    height: 80,
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(15)),
                      onPressed: () {
                        ChildNavigator.replace('/song_list_detail',
                            arguments: e.id);
                      },
                      child: Row(
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: CachedNetworkImage(
                                imageUrl: e.coverImgUrl ?? '',
                                placeholder: (_, __) =>
                                    ImageDefault.placeholder,
                                errorWidget: (_, __, ___) =>
                                    ImageDefault.defaultImageWhite,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: Text(
                            e.name ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                TextStyle(fontSize: 16, color: Colors.white60),
                          )),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              '${e.trackCount ?? 0}首',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff515150)),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              'by ${e.track?.artists?.map((e) => e.name).join(' ') ?? ''}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff515150)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
        onRefresh: getList);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
