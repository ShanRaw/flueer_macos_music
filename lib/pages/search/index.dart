import 'package:flutter/material.dart';
import 'package:music/config/apis.dart';
import 'package:music/pages/search/song_list_tab_body.dart';
import 'package:music/pages/search/song_tab_body.dart';
import 'package:music/utils/http.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

typedef TabItemTypeBody<Widget>();

class TabItemType {
  String name;
  int type;

  TabItemType({required this.name, required this.type});
}

class _SearchPageState extends State<SearchPage> {
  List<TabItemType> menus = [
    TabItemType(name: '单曲', type: 1),
    // TabItemType(name: '歌手', type: 100),
    TabItemType(name: '歌单', type: 1000)
  ];
  int active = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final keyword = ModalRoute.of(context)?.settings.arguments as String;
    return Container(
      color: Color(0xff252524),
      child: DefaultTabController(
          length: menus.length,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: RichText(
                  text: TextSpan(
                      text: keyword,
                      style: TextStyle(fontSize: 26, color: Color(0xffB2B3B3)),
                      children: [
                        TextSpan(
                            text: '  找到 68 首${menus[active].name}',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff646464)))
                      ]),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TabBar(
                  labelStyle: TextStyle(fontSize: 16),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Color(0xffA8382B),
                  tabs: menus
                      .map((e) => Tab(
                            text: e.name,
                          ))
                      .toList(),
                  isScrollable: true,
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  SearchSongTabBody(
                    type: 1,
                    keyword: keyword,
                  ),
                  SearchSongListTabBody(keyword: keyword, type: 1000)
                ],
              ))
            ],
          )),
    );
  }
}
