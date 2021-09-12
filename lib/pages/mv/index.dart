import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/components/custom_sliver_persistent_header_delegate.dart';
import 'package:music/pages/mv/state.dart';
import 'package:music/utils/main_navigator.dart';
import 'package:provider/provider.dart';
import 'package:music/utils/int_expansion.dart';

class MvPage extends StatefulWidget {
  @override
  _MvPageState createState() => _MvPageState();
}

class _MvPageState extends State<MvPage> {
  ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() async {
      if (_scrollController.position.pixels >=
          (_scrollController.position.maxScrollExtent - 50)) {
        if (_isLoading) return;
        _isLoading = true;
        await context.read<MvState>().getListData();
        _isLoading = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabs = context.watch<MvState>().tabs;
    final active = context.watch<MvState>().active;
    final list = context.watch<MvState>().list;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      color: Color(0xff252524),
      child: CustomScrollView(
        controller: _scrollController,
        cacheExtent: 800,
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              delegate: CustomSliverPersistentHeaderDelegate(
                  height: 60,
                  child: Container(
                    height: 60,
                    color: Color(0xff252524),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.zero,
                      children: tabs
                          .asMap()
                          .keys
                          .map((index) => TextButton(
                              onPressed: () =>
                                  context.read<MvState>().changeTab(index),
                              style: TextButton.styleFrom(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15)),
                              child: Text(
                                tabs[index].name,
                                style: TextStyle(
                                    color: active == index
                                        ? Color(0xffC24B39)
                                        : Colors.white60),
                              )))
                          .toList(),
                    ),
                  ))),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 250 / 190,
            children: list
                .map((e) => TextButton(
                    onPressed: () {
                      MainNavigator.push('/mv_detail');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 250 / 145,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        e.cover ?? ''))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.play_arrow_outlined,
                                      size: 14,
                                      color: Colors.white60,
                                    ),
                                    Text(
                                      '${e.playCount ?? ''}',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white60),
                                    )
                                  ],
                                ),
                                Text(
                                  '${e.mv?.videos?[(e.mv?.videos?.length ?? 1) - 1].duration?.toHourMinute ?? '00:00'}',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white60),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${e.name ?? ''}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffADADAD)),
                        ),
                        Text(
                          'by ${e.artistName ?? ''}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 10, color: Color(0xff505050)),
                        ),
                      ],
                    )))
                .toList(),
          )
        ],
      ),
    );
  }
}
