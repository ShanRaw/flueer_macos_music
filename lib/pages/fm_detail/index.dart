import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/components/custom_sliver_persistent_header_delegate.dart';
import 'package:music/components/pagination.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/dj_detail_entity.dart';
import 'package:music/models/automation/dj_hot_entity.dart';
import 'package:music/models/automation/dj_program_entity.dart';
import 'package:music/models/automation/playlist_detail_response_entity.dart';
import 'package:music/pages/song_list_details/components/head.dart';
import 'package:music/pages/song_list_details/components/song_list_tab.dart';
import 'package:music/utils/http.dart';
import 'package:music/utils/image_deault.dart';
import 'package:music/utils/int_expansion.dart';

class FmDetailPage extends StatefulWidget {
  @override
  _FmDetailPageState createState() => _FmDetailPageState();
}

class _FmDetailPageState extends State<FmDetailPage> {
  DjDetailData? data;
  GlobalKey<RefreshIndicatorState> refresh = GlobalKey<RefreshIndicatorState>();
  List<DjProgramPrograms> list = [];

  int size = 40;
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
                type: SongListDetailsHeadType.DJ,
                data: PlaylistDetailResponseEntity().fromJson({
                  'playlist': {
                    'coverImgUrl': data?.picUrl ?? '',
                    'name': data?.name ?? '',
                    'description': data?.desc ?? '',
                    'creator': {
                      'avatarUrl': data?.dj?.avatarUrl ?? '',
                      'nickname': data?.dj?.nickname
                    }
                  }
                }),
              ),
            ),
            SliverPersistentHeader(
                pinned: true,
                delegate: CustomSliverPersistentHeaderDelegate(
                    child: SongListTab(
                      type: SongListDetailsHeadType.DJ,
                    ),
                    height: 50)),
            SliverList(
                delegate: SliverChildListDelegate(list
                    .map(
                      (e) => SizedBox(
                        height: 65,
                        child: InkWell(
                            onDoubleTap: () {},
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
                                    child: Text(
                                      '喜欢：${e.listenerCount ?? 0}',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white30),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      '听众：${e.listenerCount ?? 0}',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white30),
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
