import 'package:flutter/material.dart';

typedef OnChange = void Function(int page);

class Pagination extends StatelessWidget {
  //总页数
  final int total;

  //当前页
  final int current;
  final OnChange onChange;

  Pagination(
      {required this.total, required this.current, required this.onChange});

  List<PaginationItem> renderPage() {
    List<PaginationItem> list = [];
    list.add(PaginationItem(
      page: 1,
      active: current == 1,
      onPressed: 1 == current ? () {} : () => onChange(1),
      type: PaginationItemType.Normal,
    ));

    if (total == 1) return list;
    //开始下标
    int start = 0;
    //结束下标
    int end = 0;
    //前面是否需要。。。
    bool firstMore = false;
    //后面是否需要。。。
    bool endMore = false;
    //如果长度不够 中间就是固定长度 total - 2
    if (total <= 10) {
      start = 2;
      end = total - 1 < start ? start : total - 1;
    } else {
      //长度够的话 判断当前下标是在前4 还是后4
      start = current - 3;
      end = current + 3;
      if (start <= 1) {
        start = 2;
        end = 8;
        endMore = true;
      } else if (end >= total) {
        start = total - 8;
        end = total - 1;
        firstMore = true;
      } else {
        firstMore = true;
        endMore = true;
      }
    }

    for (int i = start; i <= end; i++) {
      list.add(PaginationItem(
        page: i,
        active: i == current,
        onPressed: i == current ? () {} : () => onChange(i),
        type: ((i == start && firstMore) || (i == end && endMore))
            ? PaginationItemType.Disable
            : PaginationItemType.Normal,
      ));
    }

    list.add(PaginationItem(
      page: total,
      active: current == total,
      onPressed: total == current ? () {} : () => onChange(total),
      type: PaginationItemType.Normal,
    ));
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PaginationItem(
          active: current != 1,
          onPressed: current == 1 ? () {} : () => onChange(current - 1),
          type: PaginationItemType.Pre,
        ),
        ...renderPage(),
        PaginationItem(
          active: current != total,
          onPressed: current == total ? () {} : () => onChange(current + 1),
          type: PaginationItemType.Next,
        ),
      ],
    );
  }
}

enum PaginationItemType {
  Pre,
  Next,
  Disable,
  Normal,
}

class PaginationItem extends StatelessWidget {
  //当前是否高亮
  final bool active;

  //点击会调事件
  final VoidCallback? onPressed;

  //第几页
  final int? page;

  //按钮类型
  final PaginationItemType type;

  PaginationItem(
      {this.active = false,
      this.onPressed,
      this.page,
      this.type = PaginationItemType.Normal});

  Widget renderBox() {
    switch (type) {
      case PaginationItemType.Pre:
        return Icon(
          Icons.chevron_left,
          size: 14,
          color: active ? Colors.white60 : Color(0xff3B3B3B),
        );
      case PaginationItemType.Next:
        return Icon(
          Icons.chevron_right,
          size: 14,
          color: active ? Colors.white60 : Color(0xff3B3B3B),
        );
      case PaginationItemType.Disable:
        return Icon(
          Icons.more_horiz,
          size: 14,
          color: Color(0xff3B3B3B),
        );
      case PaginationItemType.Normal:
        return Text(
          '$page',
          style: TextStyle(
              fontSize: 14, color: active ? Colors.white : Color(0xff3B3B3B)),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        width: 30,
        height: 30,
        child: TextButton(
          onPressed: type == PaginationItemType.Disable ? () {} : onPressed,
          child: renderBox(),
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              side: BorderSide(color: Color(0xff3B3B3B)),
              backgroundColor: (type == PaginationItemType.Normal && active)
                  ? Color(0xffC24B39)
                  : Colors.transparent),
        ),
      ),
    );
  }
}
