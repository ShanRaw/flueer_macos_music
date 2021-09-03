import 'package:flutter/material.dart';
import 'package:music/state/menu.dart';
import 'package:music/utils/child_navigator.dart';
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
          Container(
            width: 190,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 25,
                  height: 25,
                  child: IconButton(
                      onPressed: ChildNavigator.maybePop,
                      padding: EdgeInsets.zero,
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      icon: Icon(
                        Icons.chevron_left,
                        size: 25,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          ...(menuState.menus.asMap().keys.map(
                (index) => SidebarBtn(
                  menu: menuState.menus[index],
                  active: index == menuState.sidebarActive,
                  onPressed: () {
                    ChildNavigator.push(menuState.menus[index].path);
                    menuState.update(sidebarActive: index);
                  },
                ),
              ))
        ],
      ),
    );
  }
}
