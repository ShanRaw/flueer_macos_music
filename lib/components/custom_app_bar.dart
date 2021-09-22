import 'package:flutter/material.dart';
import 'package:music/components/search_bar.dart';
import 'package:music/utils/child_navigator.dart';
import 'package:music/utils/main_navigator.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBar createState() {
    // TODO: implement createState
    return _CustomAppBar();
  }
}

class _CustomAppBar extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      height: 50,
      color: Color(0xff2D2D2D),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
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
                      onPressed: () {
                        if (MainNavigator.canPop()) {
                          MainNavigator.maybePop();
                        } else {
                          ChildNavigator.maybePop();
                        }
                      },
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
          Spacer(),
          SearchBar(),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
