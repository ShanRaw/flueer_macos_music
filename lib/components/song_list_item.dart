import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:music/models/music_item.dart';
import 'package:music/utils/child_navigator.dart';

class SongListItem extends StatelessWidget {
  final MusicItem item;

  SongListItem({required this.item});

  void goDetail() {
    ChildNavigator.push('/song_list_detail', arguments: item.id);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: goDetail,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(item.image ?? ''),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white70,
                          size: 10,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${item.playCount ?? ''}',
                          style: TextStyle(fontSize: 10, color: Colors.white70),
                        )
                      ],
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${item.name ?? ''}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white70, fontSize: 14),
          )
        ],
      ),
    );
  }
}
