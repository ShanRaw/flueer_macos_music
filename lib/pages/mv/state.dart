import 'package:flutter/cupertino.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/top_mv_entity.dart';
import 'package:music/utils/http.dart';

class MvState extends ChangeNotifier {
  int _size = 20;

  bool _isFinish = false;

  List<MvTapItem> tabs = [
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

  Future getListData() async {
    if (_isFinish) return;
    final res = TopMvEntity().fromJson(await Http.api(api: Apis.topMv, params: {
      'limit': _size,
      'area': tabs[_active].id,
      'offset': _list.length
    }));
    _isFinish = res.hasMore == true ? false : true;
    _list.addAll(res.data ?? []);
    notifyListeners();
  }

  changeTab(int index) {
    _active = index;
    _isFinish = false;
    notifyListeners();
    _list = [];
    getListData();
  }

  Future init() async {
    _isFinish = false;
    getListData();
  }
}

class MvTapItem {
  String name;
  String id;

  MvTapItem({required this.name, required this.id});
}
