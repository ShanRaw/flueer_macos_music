import 'package:flutter/cupertino.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/top_mv_entity.dart';
import 'package:music/utils/http.dart';

class MvState extends ChangeNotifier {
  List<MvTapItem> tabs = [
    MvTapItem(name: '全部', id: ''),
    MvTapItem(name: '内地', id: '内地'),
    MvTapItem(name: '港台', id: '港台'),
    MvTapItem(name: '欧美', id: '欧美'),
    MvTapItem(name: '日本', id: '日本'),
    MvTapItem(name: '韩国', id: '韩国'),
  ];

  int _active = 0;

  int get active => _active;

  List<TopMvData> _list = [];

  List<TopMvData> get list => _list;

  Future getTabData() async {
    final res = TopMvEntity().fromJson(await Http.api(
        api: Apis.topMv, params: {'limit': 30, 'area': tabs[_active].id}));
    _list = res.data ?? [];
    notifyListeners();
  }

  changeTab(int index) {
    _active = index;
    notifyListeners();
    getTabData();
  }

  Future init() async {
    getTabData();
  }
}

class MvTapItem {
  String name;
  String id;

  MvTapItem({required this.name, required this.id});
}
