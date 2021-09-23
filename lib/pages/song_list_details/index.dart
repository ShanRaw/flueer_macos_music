import 'package:flutter/material.dart';
import 'package:music/components/custom_sliver_persistent_header_delegate.dart';
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
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SongListDetailsHead(
              data: CustomListHeadModel(
                  name: data?.playlist?.name ?? '',
                  img: data?.playlist?.coverImgUrl ?? '',
                  type: SongType.SONG,
                  nickname: data?.playlist?.creator?.nickname ?? '',
                  tags: data?.playlist?.tags?.map((e) => e).join(' ') ?? '',
                  playCount: data?.playlist?.playCount ?? 0,
                  trackCount: data?.playlist?.trackCount ?? 0,
                  createTime: data?.playlist?.createTime ?? 0,
                  avatarUrl: data?.playlist?.creator?.avatarUrl ?? '',
                  description: data?.playlist?.description ?? ''),
              playAll: playAll,
              addAll: addAll,
            ),
          ),
          SliverPersistentHeader(
              pinned: true,
              delegate: CustomSliverPersistentHeaderDelegate(
                  height: 50, child: SongListTab())),
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
          ),
        ],
      ),
    );
  }
}
