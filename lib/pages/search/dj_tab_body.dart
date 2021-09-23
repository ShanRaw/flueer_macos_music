import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/dj_hot_entity.dart';
import 'package:music/models/automation/search_dj_entity.dart';
import 'package:music/utils/child_navigator.dart';
import 'package:music/utils/http.dart';
import 'package:music/utils/image_deault.dart';

class SearchDjTabBody extends StatefulWidget {
  final String keyword;
  final int type;

  SearchDjTabBody({required this.keyword, required this.type});

  @override
  _SearchDjTabBodyState createState() => _SearchDjTabBodyState();
}

class _SearchDjTabBodyState extends State<SearchDjTabBody>
    with AutomaticKeepAliveClientMixin {
  List<SearchDjResultDjRadios> list = [];

  Future getList() async {
    final res = SearchDjEntity().fromJson(await Http.api(
        api: Apis.search,
        params: {
          'keywords': widget.keyword,
          'type': widget.type,
          'limit': 30
        }));

    setState(() {
      list = res.result?.djRadios ?? [];
      print(list.length);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      getList();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      padding: EdgeInsets.all(15),
      children: list
          .map((e) => SizedBox(
                height: 80,
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(15)),
                  onPressed: () {
                    ChildNavigator.replace('/fm_detail',
                        arguments: DjHotDjRadios().fromJson(e.toJson()));
                  },
                  child: Row(
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: CachedNetworkImage(
                            imageUrl: e.picUrl ?? '',
                            placeholder: (_, __) => ImageDefault.placeholder,
                            errorWidget: (_, __, ___) =>
                                ImageDefault.defaultImageWhite,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: Text(
                        e.name ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16, color: Colors.white60),
                      )),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          '${e.programCount ?? 0}节目',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff515150)),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          '${e.category}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff515150)),
                        ),
                      )
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
