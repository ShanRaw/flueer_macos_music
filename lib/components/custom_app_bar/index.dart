import 'package:flutter/material.dart';
import 'package:music/components/search_bar/index.dart';

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
          Spacer(),
          SearchBar(),
          SizedBox(
            width: 15,
          ),
          SizedBox(
            width: 20,
            height: 20,
            child: IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(
                  Icons.settings,
                  size: 16,
                  color: Color(0xff808080),
                )),
          ),
          SizedBox(
            width: 15,
          ),
          SizedBox(
            width: 20,
            height: 20,
            child: IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(
                  Icons.mode_comment,
                  size: 16,
                  color: Color(0xff808080),
                )),
          ),
          SizedBox(
            width: 15,
          ),
          SizedBox(
            width: 20,
            height: 20,
            child: IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(
                  Icons.emoji_people,
                  size: 16,
                  color: Color(0xff808080),
                )),
          ),
          SizedBox(
            width: 15,
          ),
          SizedBox(
            width: 20,
            height: 20,
            child: IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(
                  Icons.copy,
                  size: 16,
                  color: Color(0xff808080),
                )),
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
