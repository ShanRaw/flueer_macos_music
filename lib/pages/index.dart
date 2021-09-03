import 'package:flutter/material.dart';
import 'package:music/components/custom_app_bar/index.dart';
import 'package:music/components/custom_sidebar/index.dart';
import 'package:music/components/music_controller/index.dart';
import 'package:music/components/play_list_modal/index.dart';
import 'package:music/pages/home/index.dart';
import 'package:music/routes/index.dart';
import 'package:music/state/music.dart';
import 'package:music/utils/child_navigator.dart';
import 'package:music/utils/custom_dialog.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CustomDialog.getInstance().context = context;
    final showPlayList = context.watch<MusicState>().showPlayList;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              CustomSidebar(),
              Expanded(
                  child: Column(
                children: [
                  CustomAppBar(),
                  Expanded(
                      child: Navigator(
                    key: ChildNavigator.key,
                    // initialRoute: '/home',
                    onGenerateRoute: (RouteSettings setting) {
                      WidgetBuilder builder =
                          routes[setting.name] ?? (_) => HomePage();
                      return PageRouteBuilder(
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                          pageBuilder: (_, __, ___) => builder(_),
                          // transitionDuration: Duration.zero,
                          settings: setting);
                    },
                  ))
                ],
              ))
            ],
          ),
          showPlayList ? PlayListModal() : Container(),
        ],
      ),
      backgroundColor: Color(0xff252524),
      bottomNavigationBar: MusicController(),
    );
  }
}
