import 'package:flutter/material.dart';

class ImageDefault {
  ImageDefault._();

  static Widget get placeholder => Center(
        child: SizedBox(
          width: 15,
          height: 15,
          child: CircularProgressIndicator(
            color: Colors.redAccent,
          ),
        ),
      );

  static Widget get defaultImageWhite => Image.asset('assets/images/playlist_playlist.9.png');

}
