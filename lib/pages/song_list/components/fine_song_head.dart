import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/song_list/state.dart';
import 'package:music/utils/child_navigator.dart';
import 'package:music/utils/image_deault.dart';
import 'package:provider/provider.dart';

class FineSongHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final item = context.watch<SongListSate>().fine;
    final tags = context.watch<SongListSate>().tags;
    final active = context.watch<SongListSate>().active;
    if (item == null) return Container();
    return SizedBox(
      height: 150,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () => ChildNavigator.push('/fine_list',
            arguments: tags[active].name ?? ''),
        child: Container(
          height: 150,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: Color(0xff485A65),
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: CachedNetworkImageProvider(item.coverImgUrl ?? ''),
                  fit: BoxFit.cover)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: CachedNetworkImage(
                      imageUrl: item.coverImgUrl ?? '',
                      width: 120,
                      height: 120,
                      fit: BoxFit.fill,
                      placeholder: (context, url) => ImageDefault.placeholder,
                      errorWidget: (_, __, ___) =>
                          ImageDefault.defaultImageWhite,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 90,
                        height: 30,
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffDEAD65), width: 1),
                                borderRadius: BorderRadius.circular(40)),
                            child: Text(
                              '精品歌单',
                              style: TextStyle(
                                  color: Color(0xffDEAD65),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        item.name ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        item.copywriter ?? '',
                        style: TextStyle(
                            fontSize: 12, color: Colors.white.withOpacity(.6)),
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
