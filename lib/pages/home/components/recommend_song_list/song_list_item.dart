import 'package:flutter/material.dart';
import 'package:music/models/automation/personalized_response_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:music/utils/child_navigator.dart';

class SongListItem extends StatelessWidget {
  final PersonalizedResponseResult item;

  SongListItem({required this.item});

  void goDetail() {
    ChildNavigator.push('/song_list_detail', arguments: item.id);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 195,
      height: 250,
      child: TextButton(
        onPressed: goDetail,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                    imageUrl: item.picUrl ?? '',
                    width: 195,
                    height: 195,
                    fit: BoxFit.fill,
                    placeholder: (context, url) => Placeholder(),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Row(
                    children: [
                      Icon(
                        Icons.airplay_rounded,
                        color: Colors.white70,
                        size: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${item.playCount}',
                        style: TextStyle(fontSize: 10, color: Colors.white70),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${item.name}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white70, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
