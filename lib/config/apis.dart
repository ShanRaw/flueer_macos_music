import 'package:music/models/api.dart';

class Apis {
  Apis._();

  //用户每日推荐歌单
  static Api get recommendResource =>
      Api(method: 'get', url: '/recommend/resource', auth: false);

  //推荐歌单
  static Api get personalized =>
      Api(method: 'get', url: '/personalized', auth: false);

  //获取歌单详情
  static Api get playlistDetail =>
      Api(method: 'get', url: '/playlist/detail', auth: false);

  //热门歌单分类
  static Api get playlistHot =>
      Api(method: 'get', url: '/playlist/hot', auth: false);

  //获取歌单
  static Api get topPlaylist =>
      Api(method: 'get', url: '/top/playlist', auth: false);

  //获取精品歌单
  static Api get topPlaylistHighquality =>
      Api(method: 'get', url: '/top/playlist/highquality', auth: false);

  //独家放送
  static Api get personalizedPrivatecontent =>
      Api(url: '/personalized/privatecontent', auth: false);

  //推荐新音乐
  static Api get personalizedNewsong =>
      Api(url: '/personalized/newsong', auth: false);
}
