import 'package:flutter/material.dart';

class MainNavigator {
  static final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  static push(String name, {Object? arguments}) =>
      key.currentState?.pushNamed(name, arguments: arguments);

  static canPop() => key.currentState?.canPop();

  static maybePop() => key.currentState?.maybePop();

  static pop() => key.currentState?.pop();
}
