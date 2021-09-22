import 'package:flutter/material.dart';
import 'package:music/models/automation/playlist_detail_response_entity.dart';
import 'package:music/models/player_item.dart';
import 'package:music/state/music.dart';
import 'package:provider/provider.dart';
import 'package:music/utils/sys_expansion.dart';

class SongItem extends StatelessWidget {
  final PlaylistDetailResponsePlaylistTracks item;
  final int index;

  SongItem({required this.item, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => context.read<MusicState>().play(
          music: PlayerItem(
              img: item.al?.picUrl ?? '',
              name: item.name ?? '',
              author: item.ar?.map((e) => e.name).join(' ') ?? '',
              duration: item.dt ?? 0,
              url:
                  'https://music.163.com/song/media/outer/url?id=${item.id}.mp3',
              id: item.id ?? 0)),
      child: Container(
        height: 40,
        color: index % 2 == 0 ? Color(0xff29292A) : Color(0xff252525),
        child: Row(
          children: [
            SizedBox(
              width: 30,
            ),
            SizedBox(
              width: 50,
              child: Text(
                '${(index + 1).toString().padLeft(2, '0')}',
                style: TextStyle(fontSize: 12, color: Color(0xff545454)),
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
                onPressed: () => context.read<MusicState>().add(
                    music: PlayerItem(
                        img: item.al?.picUrl ?? '',
                        name: item.name ?? '',
                        author: item.ar?.map((e) => e.name).join(' ') ?? '',
                        duration: item.dt ?? 0,
                        url: 'https://music.163.com/song/media/outer/url?id=${item.id}.mp3',
                        id: item.id ?? 0)),
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
  }
}
