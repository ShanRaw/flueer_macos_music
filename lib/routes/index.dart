import 'package:flutter/material.dart';
import 'package:music/modules/fm/index.dart';
import 'package:music/pages/home/index.dart';
import 'package:music/pages/song_list/index.dart';
import 'package:music/pages/song_list_details/index.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (_) => HomePage(),
  '/song_list': (_) => SongListPage(),
  '/song_list_detail': (_) => SongListDetailsPage(),
  '/fm': (_) => FmPage(),
};
