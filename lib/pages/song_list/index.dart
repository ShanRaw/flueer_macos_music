import 'package:flutter/material.dart';
import 'package:music/pages/song_list/model.dart';

import 'components/fine_song_list.dart';
import 'components/list/index.dart';

class SongListPage extends StatefulWidget {
  @override
  _SongListPageState createState() => _SongListPageState();
}

class _SongListPageState extends State<SongListPage> with SongListPageModel {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tags.length,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            //精品歌单
            fine == null
                ? SizedBox(height: 150,)
                : FineSongList(
                    item: fine,
                  ),
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
            Expanded(
                child: TabBarView(
                    children: tags
                        .map((e) => SongListBody(
                              tag: e,
                            ))
                        .toList()))
            //内容区域
          ],
        ),
      ),
    );
  }
}
