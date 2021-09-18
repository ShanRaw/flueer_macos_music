import 'package:flutter/material.dart';
import 'package:music/pages/fine_list/index.dart';
import 'package:music/pages/fm/index.dart';
import 'package:music/pages/fm_detail/index.dart';
import 'package:music/pages/home/index.dart';
import 'package:music/pages/mv/index.dart';
import 'package:music/pages/mv_detail/index.dart';
import 'package:music/pages/search/index.dart';
import 'package:music/pages/song_list/index.dart';
import 'package:music/pages/song_list_details/index.dart';

final Map<String, WidgetBuilder> routes = {
  // '/': (_) => MainPage(),
  '/home': (_) => HomePage(),
  '/song_list': (_) => SongListPage(),
  '/song_list_detail': (_) => SongListDetailsPage(),
  '/fine_list': (_) => FineListPage(),
  '/fm': (_) => FmPage(),
  '/fm_detail': (_) => FmDetailPage(),
  '/mv': (_) => MvPage(),
  '/mv_detail': (_) => MvDetail(),
  '/search': (_) => SearchPage(),
};
