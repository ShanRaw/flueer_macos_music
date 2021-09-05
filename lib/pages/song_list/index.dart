import 'package:flutter/material.dart';
import 'package:music/components/custom_sliver_persistent_header_delegate.dart';
import 'package:music/components/pagination.dart';
import 'package:music/components/song_list_item.dart';
import 'package:music/models/music_item.dart';
import 'package:music/pages/song_list/state.dart';
import 'components/fine_song_head.dart';
import 'package:provider/provider.dart';

class SongListPage extends StatefulWidget {
  @override
  _SongListPageState createState() => _SongListPageState();
}

class _SongListPageState extends State<SongListPage>  {

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
    final tags = context.watch<SongListSate>().tags;
    final changeTab = context.read<SongListSate>().changeTab;
    final index = context.watch<SongListSate>().active;
    final mockList = context.read<SongListSate>().mockList;
    final nowList = context.watch<SongListSate>().listMap[tags[index].id];
    final current = context.watch<SongListSate>().current;
    final total = context.watch<SongListSate>().total;
    final list = nowList ?? mockList;
    return DefaultTabController(
      length: tags.length,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: FineSongHead(),
            ),
            // tab选项卡
            SliverPersistentHeader(
                pinned: true,
                delegate: CustomSliverPersistentHeaderDelegate(
                    child: Container(
                      height: 60,
                      color: Color(0xff242423),
                      child: TabBar(
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                        isScrollable: true,
                        physics: AlwaysScrollableScrollPhysics(),
                        indicatorColor: Color(0xffBF4C36),
                        indicatorSize: TabBarIndicatorSize.label,
                        onTap: changeTab,
                        labelStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                        tabs: tags
                            .map(
                              (e) => Tab(
                                text: e.name,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    height: 60)),
            SliverPersistentHeader(
              pinned: true,
              delegate: CustomSliverPersistentHeaderDelegate(
                  height: 15,
                  child: Container(
                    color: Color(0xff242423),
                    height: 15,
                  )),
            ),
            // //内容区域
            SliverGrid.count(
              crossAxisCount: 5,
              mainAxisSpacing: 18,
              crossAxisSpacing: 18,
              childAspectRatio: 195 / 250,
              children: list
                  .map((e) => SongListItem(
                        item: MusicItem(
                            name: e.name,
                            image: e.coverImgUrl,
                            playCount: e.playCount,
                            id: e.id),
                      ))
                  .toList(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                  height: 60,
                  child: Pagination(
                    total: total,
                    current: current,
                    onChange: (int index) =>
                        context.read<SongListSate>().changePage(index),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
