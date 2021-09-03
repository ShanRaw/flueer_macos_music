import 'package:flutter/material.dart';
import 'package:music/pages/song_list_details/components/song_list_tab.dart';
import 'package:music/state/music.dart';
import 'components/head.dart';
import 'module.dart';
import 'package:music/utils/int_expansion.dart';
import 'package:provider/provider.dart';

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
                          return GestureDetector(
                            onDoubleTap: () =>
                                context.read<MusicState>().play(music: item),
                            child: Container(
                              height: 40,
                              color: index % 2 == 0
                                  ? Color(0xff29292A)
                                  : Color(0xff252525),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: 50,
                                    child: Text(
                                      '${(index + 1).toString().padLeft(2, '0')}',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff545454)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Text(
                                    '${item.name ?? ''}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffB5B4B4),
                                    ),
                                  )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      '${item.ar?.map((e) => e.name).join(',')}',
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
                                      '${item.al?.name ?? ''}',
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
                                      '${item.dt?.toHourMinute ?? '00:00'}',
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
                                    width: 30,
                                    height: 30,
                                    child: TextButton(
                                      onPressed: () => context
                                          .read<MusicState>()
                                          .add(music: item),
                                      child: Icon(
                                        Icons.add,
                                        size: 16,
                                        color: Colors.white60,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                ],
                              ),
                            ),
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
