import 'package:music/models/api.dart';

class Apis {
  Apis._();

  //用户每日推荐歌单
  static Api get recommendResource =>
      Api(method: 'get', url: '/recommend/resource');

  //推荐歌单
  static Api get personalized => Api(method: 'get', url: '/personalized');

  //获取歌单详情
  static Api get playlistDetail => Api(method: 'get', url: '/playlist/detail');

  //热门歌单分类
  static Api get playlistHot => Api(method: 'get', url: '/playlist/hot');

  //获取歌单
  static Api get topPlaylist => Api(method: 'get', url: '/top/playlist');

  //获取精品歌单
  static Api get topPlaylistHighquality =>
      Api(method: 'get', url: '/top/playlist/highquality');

  //独家放送
  static Api get personalizedPrivatecontent =>
      Api(url: '/personalized/privatecontent');

  //推荐新音乐
  static Api get personalizedNewsong => Api(url: '/personalized/newsong');

  //全部mv
  static Api get topMv => Api(url: '/top/mv');

  //获取MV信息
  static Api get mvDetail => Api(url: '/mv/detail');

  //获取MV播放地址
  static Api get mvUrl => Api(url: '/mv/url');

  //搜索
  static Api get search => Api(url: '/search');

  //电台排行
  static Api get djHot => Api(url: '/dj/hot');
}
