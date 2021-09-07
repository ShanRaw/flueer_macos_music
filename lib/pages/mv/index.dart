import 'package:flutter/material.dart';
import 'package:music/components/custom_sliver_persistent_header_delegate.dart';
import 'package:music/pages/mv/state.dart';
import 'package:provider/provider.dart';

class MvPage extends StatefulWidget {
  @override
  _MvPageState createState() => _MvPageState();
}

class _MvPageState extends State<MvPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<MvState>().init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabs = context.watch<MvState>().tabs;
    final active = context.watch<MvState>().active;
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
            pinned: true,
            delegate: CustomSliverPersistentHeaderDelegate(
                height: 60,
                child: Container(
                  height: 60,
                  color: Color(0xff252524),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    children: tabs
                        .asMap()
                        .keys
                        .map((index) => TextButton(
                            onPressed: () =>
                                context.read<MvState>().changeTab(index),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 15)),
                            child: Text(
                              tabs[index].name,
                              style: TextStyle(
                                  color: active == index
                                      ? Color(0xffC24B39)
                                      : Colors.white60),
                            )))
                        .toList(),
                  ),
                ))),
      ],
    );
  }
}
