import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/utils/image_deault.dart';
import 'package:provider/provider.dart';

import '../state.dart';

class ExclusiveMemory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final personalizedPrivatecontentResult =
        context.watch<HomeState>().personalizedPrivatecontentResult;
    return SliverToBoxAdapter(
      child: Row(
        children: personalizedPrivatecontentResult
            .asMap()
            .keys
            .map((index) => Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (index != 0 ||
                              index != personalizedPrivatecontentResult.length)
                          ? 7.5
                          : 0),
                  child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: CachedNetworkImage(
                                  imageUrl: personalizedPrivatecontentResult[
                                              index]
                                          .picUrl ??
                                      personalizedPrivatecontentResult[index]
                                          .sPicUrl ??
                                      '',
                                  height: 125,
                                  placeholder: (_, __) =>
                                      ImageDefault.placeholder,
                                  errorWidget: (_, __, ___) =>
                                      ImageDefault.defaultImageWhite,
                                ),
                              ),
                              Positioned(
                                  left: 15,
                                  top: 15,
                                  child: Icon(
                                    Icons.play_circle_fill,
                                    size: 24,
                                    color: Colors.black.withOpacity(.5),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 40,
                            child: Text(
                              personalizedPrivatecontentResult[index].name ??
                                  '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        ],
                      )),
                )))
            .toList(),
      ),
    );
  }
}
