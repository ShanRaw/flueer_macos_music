import 'package:flutter/foundation.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/fine_song_list_response_entity.dart';
import 'package:music/models/automation/song_list_res_entity.dart';
import 'package:music/models/automation/tag_response_entity.dart';
import 'package:music/utils/http.dart';

class SongListSate extends ChangeNotifier {
  //每次请求加载的数量
  static int _size = 50;

  //当前tab高亮的下表
  int _active = 0;

  int get active => _active;

  //精品歌单数据
  FineSongListResponsePlaylists? _fine;

  FineSongListResponsePlaylists? get fine => _fine;

  //标签列表
  List<TagResponseTags> _tags = [
    TagResponseTags().fromJson({'name': '全部', 'id': 0})
  ];

  List<TagResponseTags> get tags => _tags;

  //列表数据
  Map<int, List<SongListResPlaylists>> _listMap = {};

  Map<int, List<SongListResPlaylists>> get listMap => _listMap;

  //模拟列表的数据
  List<SongListResPlaylists> mockList = List<SongListResPlaylists>.filled(
      _size, SongListResPlaylists().fromJson({}));

  //获取标签数据
  void getTags() async {
    final res =
        TagResponseEntity().fromJson(await Http.api(api: Apis.playlistHot));
    _tags = [
      TagResponseTags().fromJson({'name': '全部', 'id': 0}),
      ...res.tags ?? []
    ];
    notifyListeners();
  }

  //获取精品歌单的数据
  void getFineSong({TagResponseTags? item}) async {
    final res = FineSongListResponseEntity().fromJson(await Http.api(
        api: Apis.topPlaylistHighquality,
        params: {'cat': item?.name ?? '', 'limit': 1}));
    _fine = res.playlists?.length == 0 ? null : res.playlists?[0];
    notifyListeners();
  }

  //获取列表数据
  getList({required TagResponseTags item}) async {
    final res = SongListResEntity()
        .fromJson(await Http.api(api: Apis.topPlaylist, params: {
      'cat': item.name,
      'order': 'hot',
      'limit': _size,
    }));
    listMap.addAll({item.id ?? 0: res.playlists ?? []});
    notifyListeners();
  }

  //选项卡改变
  void changeTab(int index) {
    _active = index;
    notifyListeners();
    getFineSong(item: _tags[index]);
    getList(item: _tags[index]);
  }
}
