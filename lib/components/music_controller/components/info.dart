import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/state/music.dart';
import 'package:music/utils/function.dart';
import 'package:music/utils/image_deault.dart';
import 'package:provider/provider.dart';
import 'package:music/utils/int_expansion.dart';

class MusicControllerInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final music = context.watch<MusicState>().music;
    final progress = context.watch<MusicState>().progress;
    final playControlState = context.watch<MusicState>().playControlState;
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            child: music?.al?.picUrl == null
                ? Image.asset(
                    'assets/images/playlist_playlist.9.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  )
                : CachedNetworkImage(
                    imageUrl: '${music?.al?.picUrl}',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => ImageDefault.placeholder,
                    errorWidget: (_, __, ___) => ImageDefault.defaultImageWhite,
                  ),
            borderRadius: BorderRadius.circular(5),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                      children: [
                    TextSpan(text: music?.name ?? ''),
                    TextSpan(text: ' - '),
                    TextSpan(
                        text:
                            '${music?.ar?.map((e) => e.name).join(',') ?? ''}'),
                  ])),
              SizedBox(
                height: 5,
              ),
              RichText(
                  text: TextSpan(
                      style: TextStyle(fontSize: 10, color: Colors.white60),
                      children: [
                    TextSpan(text: '${progress.toHourMinute}'),
                    TextSpan(text: ' / '),
                    TextSpan(text: '${music?.dt?.toHourMinute ?? '00:00'}'),
                  ])),
            ],
          ),
          Spacer(),
          Tooltip(
            message: CustomFunction.playTypeToText(playControlState),
            child: SizedBox(
              width: 60,
              height: 60,
              child: TextButton(
                onPressed: context.read<MusicState>().changePlayMode,
                child: Text(
                  CustomFunction.playTypeToText(playControlState),
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: TextButton(
                onPressed: context.read<MusicState>().showPlayListAction,
                child: Icon(
                  Icons.format_list_bulleted,
                  color: Colors.white60,
                )),
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      final volume = _.watch<MusicState>().volume;
                      return buildGestureDetector(_, context, volume);
                    });
              },
              child: Icon(
                Icons.volume_down_outlined,
                color: Colors.white60,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Material buildGestureDetector(
      BuildContext _, BuildContext context, double volume) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          GestureDetector(
            onTap: Navigator.of(_).pop,
          ),
          Positioned(
              right: 30,
              bottom: 50,
              child: RotatedBox(
                quarterTurns: -1,
                child: Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xff363636),
                      borderRadius: BorderRadius.circular(5)),
                  child: SliderTheme(
                    data: SliderThemeData(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                      trackHeight: 1,
                      inactiveTrackColor: Color(0xff4B4B4A),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                    ),
                    child: Slider(
                      onChanged: (double value) =>
                          context.read<MusicState>().setVolume(value),
                      value: volume,
                      min: 0,
                      max: 1,
                      activeColor: Color(0xffC3463A),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
