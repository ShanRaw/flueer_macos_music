import 'package:music/models/api.dart';

class Apis {
  Apis._();

  //用户每日推荐歌单
  static Api get recommendResource =>
      Api(method: 'get', url: '/recommend/resource', auth: true);

  //推荐歌单
  static Api get personalized =>
      Api(method: 'get', url: '/personalized', auth: true);

  //获取歌单详情
  static Api get playlistDetail =>
      Api(method: 'get', url: '/playlist/detail', auth: true);

  //热门歌单分类
  static Api get playlistHot =>
      Api(method: 'get', url: '/playlist/hot', auth: true);

  //获取歌单
  static Api get topPlaylist =>
      Api(method: 'get', url: '/top/playlist', auth: true);

  //获取精品歌单
  static Api get topPlaylistHighquality =>
      Api(method: 'get', url: '/top/playlist/highquality', auth: true);
}
