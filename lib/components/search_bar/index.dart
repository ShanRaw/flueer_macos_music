import 'package:flutter/material.dart';
import 'package:music/components/search_bar/module.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> with SearchBarModule {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xff4B4B4B),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.search_outlined,
            size: 18,
            color: Color(0xffC0C0C0),
          ),
          Expanded(
              child: TextField(
            style:
                TextStyle(fontSize: 12, color: Color(0xffC0C0C0), height: 1.2),
            textAlignVertical: TextAlignVertical.center,
            cursorWidth: 1,
            cursorHeight: 12 * 1.2,
            cursorColor: Color(0xffC0C0C0),
            decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                hintText: '搜索',
                hintStyle: TextStyle(color: Color(0xffC0C0C0))),
          ))
        ],
      ),
    );
  }
}
