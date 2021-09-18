import 'package:flutter/material.dart';

class ChildNavigator {
  static final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();
  static final RouteObserver routeObserver = RouteObserver();

  static navigate(String name, {Object? arguments}) => key.currentState
      ?.pushNamedAndRemoveUntil(name, (_) => false, arguments: arguments);

  static push(String name, {Object? arguments}) =>
      key.currentState?.pushNamed(name, arguments: arguments);

  static replace(String name, {Object? arguments}) =>
      key.currentState?.pushReplacementNamed(name, arguments: arguments);

  static maybePop() => key.currentState?.maybePop();

  static pop() => key.currentState?.pop();
}
