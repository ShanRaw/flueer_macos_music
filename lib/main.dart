import 'dart:io';
import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/home/state.dart';
import 'package:music/pages/mv/state.dart';
import 'package:music/pages/root.dart';
import 'package:music/pages/song_list/state.dart';
import 'package:music/state/menu.dart';
import 'package:music/state/music.dart';
import 'package:provider/provider.dart';
import 'package:window_size/window_size.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowMinSize(Size(1300, 800));
    setWindowMaxSize(Size(1300, 800));
    final res = await getWindowInfo();
    setWindowFrame(Rect.fromCenter(
        center: res.screen?.frame.center ?? Offset(200, 200),
        width: 1300,
        height: 800));
  }
  DartVLC.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //音乐全局控制器
        ChangeNotifierProvider<MusicState>(create: (_) => MusicState()),
        //左侧菜单
        ChangeNotifierProvider<MenuState>(create: (_) => MenuState()),
        //首页
        ChangeNotifierProvider<HomeState>(create: (_) => HomeState()),
        //歌单
        ChangeNotifierProvider<SongListSate>(create: (_) => SongListSate()),
        //视频
        ChangeNotifierProvider<MvState>(create: (_) => MvState()),
      ],
      child: MaterialApp(
        title: 'SR.Music',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme:
                TextTheme(button: TextStyle(fontWeight: FontWeight.normal))),
        // routes: routes,
        home: RootPage(),
      ),
    );
  }
}
