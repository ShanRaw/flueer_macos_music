import 'package:flutter/material.dart';
import 'package:music/models/menu.dart';
import 'package:music/state/menu.dart';
import 'package:music/utils/child_navigator.dart';
import 'package:music/utils/main_navigator.dart';
import 'components/sidebar_btn.dart';
import 'package:provider/provider.dart';

class CustomSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menuState = context.watch<MenuState>();
    return Container(
      width: 190,
      color: Color(0xff202020),
      child: Column(
        children: [
          ...(menuState.menus.asMap().keys.map(
                (index) => SidebarBtn(
                  menu: menuState.menus[index],
                  active: index == menuState.sidebarActive,
                  onPressed: () {
                    if (menuState.menus[index].type == NavigatorType.Child) {
                      ChildNavigator.push(menuState.menus[index].path);
                      menuState.update(sidebarActive: index);
                    } else {
                      print(menuState.menus[index].path);
                      MainNavigator.push(menuState.menus[index].path);
                    }
                  },
                ),
              ))
        ],
      ),
    );
  }
}
