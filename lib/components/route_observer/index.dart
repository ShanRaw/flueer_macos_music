import 'package:flutter/material.dart';
import 'package:music/state/menu.dart';
import 'package:music/utils/child_navigator.dart';
import 'package:provider/provider.dart';

class CustomRouteObserver extends StatefulWidget {
  final Widget child;

  CustomRouteObserver({required this.child});

  @override
  _CustomRouteObserverState createState() => _CustomRouteObserverState();
}

class _CustomRouteObserverState extends State<CustomRouteObserver>
    with RouteAware {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      ChildNavigator.routeObserver
          .subscribe(this, ModalRoute.of(context) as PageRoute);
    });
  }

  @override
  void didPopNext() {
    // TODO: implement didPopNext
    super.didPopNext();
    context
        .read<MenuState>()
        .changeForRouteName(ModalRoute.of(context)?.settings.name ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
