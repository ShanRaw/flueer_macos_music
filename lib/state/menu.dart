import 'package:flutter/material.dart';
import 'package:music/models/menu.dart';

class MenuState with ChangeNotifier {
  int _sidebarActive = 0;

  List<Menu> _menus = [
    Menu(title: '发现音乐', icon: '', path: '/home'),
    Menu(title: '精彩歌单', icon: '', path: '/song_list'),
    Menu(title: '私人FM', icon: '', path: '/fm'),
  ];

  int get sidebarActive => _sidebarActive;

  List<Menu> get menus => _menus;

  void update({int? sidebarActive}) {
    _sidebarActive = sidebarActive ?? _sidebarActive;
    notifyListeners();
  }

  void changeForRouteName(String name) {
    if (name == '/') {
      _sidebarActive = 0;
      notifyListeners();
      return;
    }
    final int res = _menus.indexWhere((element) => element.path == name);
    if (res == -1) return;
    _sidebarActive = res;
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
