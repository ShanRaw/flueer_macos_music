import 'package:flutter/material.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/fine_list_response_entity.dart';
import 'package:music/pages/fine_list/index.dart';
import 'package:music/utils/http.dart';

mixin FineListModule on State<FineListPage> {
  List<FineListResponsePlaylists> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      getList();
    });
  }

  Future getList() async {
    final String? cat = ModalRoute.of(context)?.settings.arguments as String;
    final res = FineListResponseEntity().fromJson(await Http.api(
        api: Apis.topPlaylistHighquality, params: {'cat': cat, 'limit': 66}));
    setState(() {
      list = res.playlists ?? [];
    });
  }
}
