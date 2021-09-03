import 'package:flutter/material.dart';

class MainNavigator {
  static final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  static navigate(String name) => key.currentState?.pushNamed(name);
  static maybePop() => key.currentState?.maybePop();
  static pop() => key.currentState?.pop();
}
