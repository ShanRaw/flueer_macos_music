import 'package:flutter/material.dart';
import 'package:music/components/song_item.dart';
import 'package:music/pages/song_list_details/components/song_list_tab.dart';
import 'components/head.dart';
import 'module.dart';

class SongListDetailsPage extends StatefulWidget {
  @override
  _SongListDetailsPageState createState() => _SongListDetailsPageState();
}

class _SongListDetailsPageState extends State<SongListDetailsPage>
    with SongListDetailsModule {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff252524),
      child: RefreshIndicator(
          key: refresh,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SongListDetailsHead(
                  data: data,
                ),
              ),
              SliverToBoxAdapter(
                child: SongListTab(),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 40,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30 + 50 + 10,
                      ),
                      Expanded(
                          child: Text(
                        '音乐标题',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff888888),
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          '作者',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff888888),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          '专辑',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff888888),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 50,
                        child: Text(
                          '时长',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff888888),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30 + 30 + 10,
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                    data?.playlist?.tracks?.asMap().keys.map((index) {
                          final item = data!.playlist!.tracks![index];
                          return SongItem(
                            item: item,
                            index: index,
                          );
                        }).toList() ??
                        []),
              )
            ],
          ),
          onRefresh: onRefresh),
    );
  }
}
