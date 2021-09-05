import 'package:flutter/material.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/personalized_response_entity.dart';
import 'package:music/models/automation/song_list_res_entity.dart';
import 'package:music/models/automation/tag_response_entity.dart';
import 'package:music/pages/home/components/recommend_song_list/song_list_item.dart';
import 'package:music/utils/http.dart';

class SongListBody extends StatefulWidget {
  final TagResponseTags tag;

  SongListBody({required this.tag});

  @override
  _SongListBodyState createState() => _SongListBodyState();
}

class _SongListBodyState extends State<SongListBody> with AutomaticKeepAliveClientMixin{
  List<SongListResPlaylists>? list = [];
  GlobalKey<RefreshIndicatorState> refresh = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      refresh.currentState?.show();
    });
  }

  Future onRefresh() async {
    await getData();
  }

  getData() async {
    final res = SongListResEntity()
        .fromJson(await Http.api(api: Apis.topPlaylist, params: {
      'cat': widget.tag.name,
      'order': 'hot',
      'limit': 50,
    }));
    setState(() {
      list = res.playlists;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        key: refresh,
        child: ListView(
          children: [
            Wrap(
              runSpacing: 18,
              spacing: 18,
              children: list
                      ?.map((e) => SongListItem(
                            item: PersonalizedResponseResult()
                                .fromJson(e.toJson()),
                          ))
                      .toList() ??
                  [],
            ),
          ],
        ),
        onRefresh: onRefresh);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
