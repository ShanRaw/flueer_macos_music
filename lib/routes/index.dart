import 'package:flutter/material.dart';
import 'package:music/pages/fine_list/index.dart';
import 'package:music/pages/fm/index.dart';
import 'package:music/pages/home/index.dart';
import 'package:music/pages/home/state.dart';
import 'package:music/pages/mv/index.dart';
import 'package:music/pages/mv/state.dart';
import 'package:music/pages/song_list/index.dart';
import 'package:music/pages/song_list/state.dart';
import 'package:music/pages/song_list_details/index.dart';
import 'package:provider/provider.dart';

final Map<String, WidgetBuilder> routes = {
  // '/': (_) => MainPage(),
  '/home': (_) {
    _.read<HomeState>().init();
    return HomePage();
  },
  '/song_list': (_) {
    _.read<SongListSate>().init();
    return SongListPage();
  },
  '/song_list_detail': (_) => SongListDetailsPage(),
  '/fine_list': (_) => FineListPage(),
  '/fm': (_) => FmPage(),
  '/mv': (_){
    _.read<MvState>().init();
    return MvPage();
  },
};
