import 'package:flutter/material.dart';
import 'package:music/components/custom_app_bar.dart';
import 'package:music/pages/song_list/state.dart';
import 'package:music/routes/index.dart';
import 'package:music/utils/custom_dialog.dart';
import 'package:music/utils/main_navigator.dart';
import 'home/state.dart';
import 'index.dart';
import 'package:provider/provider.dart';

import 'mv/state.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.wait([
      context.read<HomeState>().init(),
      context.read<SongListSate>().init(),
      context.read<MvState>().init(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    CustomDialog.getInstance().context = context;
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
              child: Navigator(
            key: MainNavigator.key,
            onGenerateRoute: (RouteSettings setting) {
              WidgetBuilder builder = routes[setting.name] ?? (_) => MainPage();
              return PageRouteBuilder(
                  // transitionDuration: Duration.zero,
                  // reverseTransitionDuration: Duration.zero,
                  pageBuilder: (_, __, ___) => builder(_),
                  // transitionDuration: Duration.zero,
                  settings: setting);
            },
          ))
        ],
      ),
    );
  }
}
