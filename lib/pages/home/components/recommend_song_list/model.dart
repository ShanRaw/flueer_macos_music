import 'package:flutter/material.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/personalized_response_entity.dart';
import 'package:music/utils/http.dart';

import 'index.dart';

mixin RecommendSongListModel on State<RecommendSongList> {
  List<PersonalizedResponseResult>? list = [];

  Future getList() async {
    final res = PersonalizedResponseEntity()
        .fromJson(await Http.api(api: Apis.personalized, params: {'limit': 10}));
    setState(() {
      list = res.result ?? [];
    });
  }
}
