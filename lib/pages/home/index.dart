import 'package:flutter/material.dart';
import 'package:music/components/song_list_item.dart';
import 'package:music/models/music_item.dart';
import 'package:music/pages/home/state.dart';
import 'components/list_title.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      if (context.read<HomeState>().recommendationList.length == 0) {
        context.read<HomeState>().refresh.currentState?.show();
      } else {
        context.read<HomeState>().onRefresh();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final list = context.watch<HomeState>().recommendationList;
    return RefreshIndicator(
        key: context.read<HomeState>().refresh,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
          child: CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: ListTitle(
                  title: '推荐歌单',
                ),
              ),
              SliverGrid.count(
                crossAxisCount: 5,
                mainAxisSpacing: 18,
                crossAxisSpacing: 18,
                childAspectRatio: 195 / 250,
                children: list
                    .map((e) => SongListItem(
                          item: MusicItem(
                              id: e.id,
                              name: e.name,
                              playCount: e.playCount,
                              image: e.picUrl),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
        onRefresh: context.read<HomeState>().onRefresh);
  }
}
