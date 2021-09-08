import 'package:flutter/cupertino.dart';

enum NavigatorType { Child, Main }

typedef MenuInitAction(BuildContext context);

class Menu {
  final String title;
  final String icon;
  final String path;
  final NavigatorType type;
  final MenuInitAction? initAction;

  Menu(
      {required this.title,
      this.icon = '',
      required this.path,
      this.type = NavigatorType.Child,
      this.initAction});
}
