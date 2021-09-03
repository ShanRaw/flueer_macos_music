import 'package:flutter/material.dart';
import 'package:music/models/menu.dart';

class MenuState with ChangeNotifier {
  int _sidebarActive = 0;

  List<Menu> _menus = [
    Menu(title: '发现音乐', icon: '', path: '/home'),
    Menu(title: '私人FM', icon: '', path: '/fm'),
  ];

  int get sidebarActive => _sidebarActive;

  List<Menu> get menus => _menus;

  void update({int? sidebarActive}) {
    _sidebarActive = sidebarActive ?? _sidebarActive;
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
