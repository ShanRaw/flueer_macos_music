import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/components/pagination.dart';
import 'package:music/pages/fm/state.dart';
import 'package:music/utils/child_navigator.dart';
import 'package:provider/provider.dart';

class FmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = context.watch<FmState>().list;
    return Container(
      padding: EdgeInsets.all(15),
      color: Color(0xff252524),
      child: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 6,
              crossAxisSpacing: 15,
              mainAxisSpacing: 5,
              childAspectRatio: .85,
              children: list
                  .map((e) => TextButton(
                        onPressed: () =>
                            ChildNavigator.push('/fm_detail', arguments: e),
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                              e.picUrl ?? ''))),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              e.name ?? '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white60),
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
          SizedBox(
            height: 40,
            child: Pagination(
              total: 10,
              onChange: (int page) {},
              current: 1,
            ),
          )
        ],
      ),
    );
  }
}
