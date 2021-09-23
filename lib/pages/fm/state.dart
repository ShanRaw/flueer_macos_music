import 'package:flutter/material.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/dj_hot_entity.dart';
import 'package:music/utils/http.dart';

class FmState extends ChangeNotifier {
  List<DjHotDjRadios> _list = [];

  List<DjHotDjRadios> get list => _list;

  //当前页
  int _current = 1;

  int get current => _current;

  //每次请求加载的数量
  int _size = 30;

  bool _loading = false;

  bool _isFish = false;

  bool get isFish => _isFish;

  getList() async {
    _loading = true;
    final res = DjHotEntity().fromJson(await Http.api(api: Apis.djHot, params: {
      'limit': _size,
      'offset': (_current - 1) * _size,
    }));
    _list.addAll(res.djRadios ?? []);
    _loading = false;
    _isFish = res.hasMore == false;
    notifyListeners();
  }

  loadMore() {
    print('进来了');
    if (_loading) return;
    print('通过了');
    _current++;
    getList();
  }

  Future init() async {
    getList();
  }
}
