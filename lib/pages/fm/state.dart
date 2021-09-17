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

  //总页数
  int _total = 1;

  int get total => _total;

  //每次请求加载的数量
  int _size = 18;

  getList() async {
    final res = DjHotEntity().fromJson(await Http.api(api: Apis.djHot, params: {
      'limit': _size,
      'offset': (_current - 1) * _size,
    }));
    _list = res.djRadios ?? [];
    notifyListeners();
  }

  Future init() async {
    getList();
  }
}
