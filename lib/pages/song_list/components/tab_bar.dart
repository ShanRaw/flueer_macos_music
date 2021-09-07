import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state.dart';

typedef OnChangeType(int index);

class SongListTabBar extends StatelessWidget {
  final OnChangeType onChange;

  SongListTabBar({required this.onChange});

  @override
  Widget build(BuildContext context) {
    final tags = context.watch<SongListSate>().tags;
    final active = context.watch<SongListSate>().active;
    return Container(
      height: 60,
      color: Color(0xff252524),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        children: tags
            .asMap()
            .keys
            .map((index) => TextButton(
                onPressed: () => onChange(index),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 15)),
                child: Text(
                  tags[index].name ?? '',
                  style: TextStyle(
                      color:
                          index == active ? Color(0xffC24B39) : Colors.white60),
                )))
            .toList(),
      ),
    );
  }
}
