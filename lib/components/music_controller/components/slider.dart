import 'dart:math';

import 'package:flutter/material.dart';
import 'package:music/state/music.dart';
import 'package:provider/provider.dart';

class MusicControllerSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final progress = context.watch<MusicState>().progress;
    final music = context.watch<MusicState>().music;
    return Positioned(
      left: 0,
      top: -22,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SliderTheme(
          data: SliderThemeData(
              trackHeight: .5,
              inactiveTrackColor: Colors.transparent,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
              trackShape: CustomTrackShape(),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
          ),
          child: Slider(
            value: min(progress.toDouble(), music?.dt?.toDouble() ?? 0.0),
            onChanged: (double value) =>
                context.read<MusicState>().changeProgress(value),
            onChangeStart: (_) => context
                .read<MusicState>()
                .changeProgressState(ProgressState.Drag),
            onChangeEnd: (_) => context
                .read<MusicState>()
                .changeProgressState(ProgressState.Normal),
            min: 0,
            max: music?.dt?.toDouble() ?? 0.0,
            activeColor: Color(0xffC24A38),
            inactiveColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double? trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
