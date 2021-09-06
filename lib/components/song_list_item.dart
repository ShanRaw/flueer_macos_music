import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:music/models/music_item.dart';
import 'package:music/utils/child_navigator.dart';
import 'package:music/utils/image_deault.dart';

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
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                    imageUrl: item.image ?? '',
                    fit: BoxFit.fill,
                    placeholder: (context, url) => ImageDefault.placeholder,
                    errorWidget: (_, __, ___) => ImageDefault.defaultImageWhite,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Row(
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
              )
            ],
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
