import 'package:flutter/material.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/personalized_newsong_entity.dart';
import 'package:music/models/automation/personalized_privatecontent_entity.dart';
import 'package:music/models/automation/personalized_response_entity.dart';
import 'package:music/utils/http.dart';

class HomeState extends ChangeNotifier {
  //推荐歌单
  List<PersonalizedResponseResult> _recommendationList =
      List<PersonalizedResponseResult>.filled(
          10,
          PersonalizedResponseResult().fromJson(
              {'picUrl': 'https://cdn.wbdear.com/playlist_playlist.9.png'}));

  List<PersonalizedResponseResult> get recommendationList =>
      _recommendationList;

  //独家放送
  List<PersonalizedPrivatecontentResult> _personalizedPrivatecontentResult =
      List<PersonalizedPrivatecontentResult>.filled(
          3,
          PersonalizedPrivatecontentResult().fromJson(
              {'picUrl': 'https://cdn.wbdear.com/playlist_playlist.9.png'}));

  List<PersonalizedPrivatecontentResult> get personalizedPrivatecontentResult =>
      _personalizedPrivatecontentResult;

  //推荐新音乐
  List<PersonalizedNewsongResult> _personalizedNewsong =
      List<PersonalizedNewsongResult>.filled(
          10,
          PersonalizedNewsongResult().fromJson(
              {'picUrl': 'https://cdn.wbdear.com/playlist_playlist.9.png'}));

  List<PersonalizedNewsongResult> get personalizedNewsong =>
      _personalizedNewsong;

  Future init() async {
    Future.wait([getList(), getPersonalizedList(), getNewSong()]);
  }

  //获取推荐歌单列表
  Future getList() async {
    final res = PersonalizedResponseEntity().fromJson(
        await Http.api(api: Apis.personalized, params: {'limit': 10}));
    _recommendationList = res.result ?? _recommendationList;
    notifyListeners();
  }

  //获取独家放送
  Future getPersonalizedList() async {
    final res = PersonalizedPrivatecontentEntity()
        .fromJson(await Http.api(api: Apis.personalizedPrivatecontent));
    _personalizedPrivatecontentResult =
        res.result ?? _personalizedPrivatecontentResult;
    notifyListeners();
  }

  //获取推荐新音乐
  Future getNewSong() async {
    final res = PersonalizedNewsongEntity()
        .fromJson(await Http.api(api: Apis.personalizedNewsong));
    _personalizedNewsong = res.result ?? _personalizedNewsong;
    notifyListeners();
  }
}
