import 'package:flutter/material.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/personalized_response_entity.dart';
import 'package:music/utils/http.dart';

class HomeState extends ChangeNotifier {
  GlobalKey<RefreshIndicatorState> _refresh =
      GlobalKey<RefreshIndicatorState>();

  GlobalKey<RefreshIndicatorState> get refresh => _refresh;

  List<PersonalizedResponseResult> _recommendationList = [];

  List<PersonalizedResponseResult> get recommendationList =>
      _recommendationList;

  Future onRefresh() async {
    await getList();
  }

  Future getList() async {
    final res = PersonalizedResponseEntity().fromJson(
        await Http.api(api: Apis.personalized, params: {'limit': 10}));
    _recommendationList = res.result ?? [];
    notifyListeners();
  }
}
