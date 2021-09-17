import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/components/pagination.dart';
import 'package:music/pages/fm/state.dart';
import 'package:music/utils/image_deault.dart';
import 'package:provider/provider.dart';

class FmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = context.watch<FmState>().list;
    return Padding(
      padding: EdgeInsets.all(15),
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
                        onPressed: () {},
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: CachedNetworkImage(
                                  imageUrl: e.picUrl ?? '',
                                  placeholder: (_, __) =>
                                      ImageDefault.placeholder,
                                  errorWidget: (_, __, ___) =>
                                      ImageDefault.defaultImageWhite,
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
