import 'package:flutter/material.dart';
import 'package:music/models/menu.dart';

class SidebarBtn extends StatelessWidget {
  final Menu menu;
  final VoidCallback? onPressed;
  final bool active;

  SidebarBtn({required this.menu, this.onPressed, this.active = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 40,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30),
              backgroundColor: active ? Color(0xff1B1B1C) : Colors.transparent),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image.asset(
              //   icon,
              //   width: 20,
              //   height: 20,
              //   fit: BoxFit.fill,
              // ),
              // SizedBox(width: 5,),
              Text(
                menu.title,
                style: TextStyle(
                    fontSize: 12,
                    color: active ? Color(0xffC14B38) : Colors.white60),
              )
            ],
          )),
    );
  }
}
