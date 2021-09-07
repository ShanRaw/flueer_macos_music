import 'package:flutter/material.dart';
import 'package:music/components/custom_app_bar.dart';
import 'package:music/routes/index.dart';
import 'package:music/utils/custom_dialog.dart';
import 'package:music/utils/main_navigator.dart';
import 'index.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CustomDialog.getInstance().context = context;
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(child: Navigator(
            key: MainNavigator.key,
            onGenerateRoute: (RouteSettings setting) {
              WidgetBuilder builder = routes[setting.name] ?? (_) => MainPage();
              return PageRouteBuilder(
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
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
