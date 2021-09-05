import 'package:flutter/material.dart';
import 'package:music/pages/song_list/state.dart';
import 'components/fine_song_head.dart';
import 'components/song_list_body.dart';
import 'package:provider/provider.dart';

class SongListPage extends StatefulWidget {
  @override
  _SongListPageState createState() => _SongListPageState();
}

class _SongListPageState extends State<SongListPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<SongListSate>().getTags();
      context.read<SongListSate>().changeTab(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final tags = context.watch<SongListSate>().tags;
    final changeTab = context.read<SongListSate>().changeTab;
    return DefaultTabController(
      length: tags.length,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            //精品歌单
            FineSongHead(),
            //tab选项卡
            Container(
              width: double.infinity,
              child: TabBar(
                indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                isScrollable: true,
                physics: AlwaysScrollableScrollPhysics(),
                indicatorColor: Color(0xffBF4C36),
                indicatorSize: TabBarIndicatorSize.label,
                onTap: changeTab,
                labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                tabs: tags
                    .map(
                      (e) => Tab(
                        text: e.name,
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //内容区域
            Expanded(child: SongListBody())
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
