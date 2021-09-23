import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/fm/state.dart';
import 'package:music/utils/child_navigator.dart';
import 'package:provider/provider.dart';

class FmPage extends StatefulWidget {
  @override
  _FmPageState createState() => _FmPageState();
}

class _FmPageState extends State<FmPage> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      scrollController.addListener(() {
        if (scrollController.position.pixels >=
            (scrollController.position.maxScrollExtent - 50)) {
          context.read<FmState>().loadMore();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final list = context.watch<FmState>().list;
    final isFish = context.watch<FmState>().isFish;
    return Container(
      padding: EdgeInsets.all(15),
      color: Color(0xff252524),
      child: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverGrid.count(
            crossAxisCount: 6,
            crossAxisSpacing: 15,
            mainAxisSpacing: 5,
            childAspectRatio: .85,
            children: list
                .map((e) => TextButton(
                      onPressed: () =>
                          ChildNavigator.push('/fm_detail', arguments: e),
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                            e.picUrl ?? ''))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            e.name ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                TextStyle(fontSize: 12, color: Colors.white60),
                          )
                        ],
                      ),
                    ))
                .toList(),
          ),
          isFish
              ? SliverToBoxAdapter(
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      '加载完成',
                      style: TextStyle(color: Colors.white60, fontSize: 12),
                    ),
                  ),
                )
              : SliverToBoxAdapter(
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      '正在加载中',
                      style: TextStyle(color: Colors.white60, fontSize: 12),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
