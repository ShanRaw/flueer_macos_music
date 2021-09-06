import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/utils/child_navigator.dart';
import 'package:music/utils/image_deault.dart';

import 'module.dart';

class FineListPage extends StatefulWidget {
  @override
  _FineListPageState createState() => _FineListPageState();
}

class _FineListPageState extends State<FineListPage> with FineListModule {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        key: refresh,
        child: GridView.count(
          padding: EdgeInsets.all(30),
          crossAxisCount: 3,
          childAspectRatio: 315 / 140,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: list
              .map((e) => TextButton(
                  onPressed: () =>
                      ChildNavigator.push('/song_list_detail', arguments: e.id),
                  child: Container(
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: CachedNetworkImage(
                            imageUrl: e.coverImgUrl ?? '',
                            width: 140,
                            height: 140,
                            placeholder: (_, __) => ImageDefault.placeholder,
                            errorWidget: (_, __, ___) =>
                                ImageDefault.defaultImageWhite,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.name ?? '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'by ${e.creator?.nickname ?? ''}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff676767),
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xffA7382C), width: 1)),
                                  child: Text(
                                    e.tag ?? '',
                                    style: TextStyle(
                                        color: Color(0xffA7382C),
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                    child: Text(
                                  e.copywriter ?? '',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Color(0xff515150),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal
                                  ),
                                ))
                              ],
                            )
                          ],
                        ))
                      ],
                    ),
                  )))
              .toList(),
        ),
        onRefresh: getList);
  }
}
