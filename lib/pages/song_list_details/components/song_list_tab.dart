import 'package:flutter/material.dart';

class SongListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: .5, color: Color(0xff313030)))),
      child: Row(
        children: [
          Container(
            child: Text(
              '歌曲列表',
              style: TextStyle(fontSize: 14, color: Color(0xffC14B38)),
            ),
            height: 30,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xffC14B38)))),
          ),
          // SizedBox(
          //   width: 15,
          // ),
          // Container(
          //   child: Text(
          //     '评论（44）',
          //     style: TextStyle(fontSize: 14, color: Colors.white60),
          //   ),
          //   height: 30,
          // ),
          // SizedBox(
          //   width: 15,
          // ),
          // Container(
          //   child: Text(
          //     '收藏者',
          //     style: TextStyle(fontSize: 14, color: Colors.white60),
          //   ),
          //   height: 30,
          // )
        ],
      ),
    );
  }
}
