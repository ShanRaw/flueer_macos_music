import 'dart:math';

import 'package:audioplayers/audioplayers_api.dart';
import 'package:flutter/material.dart';
import 'package:music/models/automation/playlistDetail_response_entity.dart';
import 'package:music/utils/player.dart';

enum PlayControlState { ONE, LOOP, RANDOM_LOOP }
enum ProgressState { Drag, Normal }

class MusicState extends ChangeNotifier {
  Random random = Random();

  //播放的歌曲列表
  List<PlaylistDetailResponsePlaylistTracks> _playList = [];

  List<PlaylistDetailResponsePlaylistTracks> get playList => _playList;

  //播放的歌曲
  PlaylistDetailResponsePlaylistTracks? _music;

  PlaylistDetailResponsePlaylistTracks? get music => _music;

  //播放状态
  PlayerState _playState = PlayerState.STOPPED;

  PlayerState get playState => _playState;

  //播放行为
  PlayControlState _playControlState = PlayControlState.LOOP;

  PlayControlState get playControlState => _playControlState;

  //音量
  double _volume = 1;

  double get volume => _volume;

  //当前进度
  int _progress = 0;

  int get progress => _progress;

  //拖动状态
  ProgressState _progressState = ProgressState.Normal;

  //是否显示音量弹框
  bool _showPlayList = false;

  bool get showPlayList => _showPlayList;

  MusicState() {
    Player.getInstance()
        .audioPlayer
        .onAudioPositionChanged
        .listen((Duration d) {
      if (_playState == PlayerState.PLAYING &&
          _progressState == ProgressState.Normal) {
        _progress = d.inMilliseconds;
        notifyListeners();
      }
    });
    Player.getInstance()
        .audioPlayer
        .onPlayerStateChanged
        .listen((PlayerState playerState) {
      _playState = playerState;
      if (playerState == PlayerState.COMPLETED) {
        playMode();
      }
      notifyListeners();
    });
  }

  //播放一首歌曲
  Future<int> play(
      {required PlaylistDetailResponsePlaylistTracks music}) async {
    if (!_playList.contains(music)) {
      _playList.insert(0, music);
      _playList = _playList.toSet().toList();
    }
    _music = music;
    final res = await Player.getInstance().play(
        'https://music.163.com/song/media/outer/url?id=${music.id}.mp3',
        volume: _volume);
    return res;
  }

  //播放歌曲列表
  Future<int> plays(
      {required List<PlaylistDetailResponsePlaylistTracks> musics}) async {
    if (musics.length == 0) return 0;
    _playList.insertAll(0, musics);
    _playList = _playList.toSet().toList();
    _music = musics[0];
    final res = await Player.getInstance().play(
        'https://music.163.com/song/media/outer/url?id=${musics[0].id}.mp3',
        volume: _volume);
    return res;
  }

  //添加一首到播放列表
  void add({required PlaylistDetailResponsePlaylistTracks music}) {
    _playList.insert(0, music);
    _playList = _playList.toSet().toList();
    notifyListeners();
  }

  //添加多首歌到播放列表
  void addAll({required List<PlaylistDetailResponsePlaylistTracks> musics}) {
    _playList.insertAll(0, musics);
    _playList = _playList.toSet().toList();
    notifyListeners();
  }

  //根据播放模式进行下一首的播放
  void playMode() {
    if (_playList.length == 0 || _music == null) return;

    if (playControlState == PlayControlState.ONE) {
      play(music: _music!);
      return;
    }

    if (playControlState == PlayControlState.LOOP) {
      final int res = _playList.indexOf(_music!);
      if (res != -1) {
        play(music: _playList[res == _playList.length - 1 ? 0 : res + 1]);
      }
      return;
    }

    if (playControlState == PlayControlState.RANDOM_LOOP) {
      final int randomIndex = random.nextInt(_playList.length - 1);
      play(music: _playList[randomIndex]);
      return;
    }
  }

  //切换播放模式
  changePlayMode() {
    late PlayControlState playControlStateNow;
    switch (_playControlState) {
      case PlayControlState.ONE:
        playControlStateNow = PlayControlState.LOOP;
        break;
      case PlayControlState.LOOP:
        playControlStateNow = PlayControlState.RANDOM_LOOP;
        break;
      case PlayControlState.RANDOM_LOOP:
        playControlStateNow = PlayControlState.ONE;
        break;
    }
    _playControlState = playControlStateNow;
    notifyListeners();
  }

  //播放上一首
  void playPre() {
    if (_playList.length == 0 || _music == null) return;
    final int res = _playList.indexOf(_music!);
    if (res != -1 || res != 0) {
      play(music: _playList[res - 1]);
    }
    return;
  }

  //播放下一首
  void playNext() {
    if (_playList.length == 0 || _music == null) return;
    final int res = _playList.indexOf(_music!);
    if (res != -1 && res != _playList.length - 1) {
      play(music: _playList[res + 1]);
    }
    return;
  }

  //暂停
  Future<int> pause() async {
    final res = await Player.getInstance().pause();
    return res;
  }

  //恢复
  Future<int> resume() async {
    final res = await Player.getInstance().resume();
    return res;
  }

  //清除歌曲列表
  void clearAll() async {
    if (playState == PlayerState.PLAYING || playState == PlayerState.PAUSED) {
      Player.getInstance().stop();
    }
    _music = null;
    _playList = [];
    _progress = 0;
    notifyListeners();
  }

  //从列表中删除
  void remove(PlaylistDetailResponsePlaylistTracks item) {
    if (item.id == _music?.id) {
      _music = null;
      _progress = 0;
      Player.getInstance().stop();
    }
    _playList.remove(item);
    notifyListeners();
  }

  //点击播放按钮自动判断进行操作
  void playOrPause() async {
    if (_playList.length == 0) return;
    if (_music == null) {
      play(music: _playList[0]);
      return;
    }
    if (_playState == PlayerState.PLAYING) {
      pause();
      return;
    }
    if (_playState == PlayerState.PAUSED) {
      resume();
      return;
    }
    if (_playState == PlayerState.STOPPED ||
        _playState == PlayerState.COMPLETED) {
      play(music: _music!);
      return;
    }
  }

  //改变进播放进度
  void changeProgress(double value) async {
    if (_music == null) return;
    Player.getInstance()
        .audioPlayer
        .seek(Duration(milliseconds: value.toInt()));
    _progress = value.toInt();
    notifyListeners();
  }

  //改变进度是否在拖拽中的状态
  void changeProgressState(ProgressState state) {
    _progressState = state;
  }

  //设置音量
  void setVolume(double value) {
    _volume = value;
    Player.getInstance().audioPlayer.setVolume(value);
    notifyListeners();
  }

  //显示播放列表
  void showPlayListAction() {
    _showPlayList = true;
    notifyListeners();
  }

  //隐藏播放列表
  void hidePlayListAction() {
    _showPlayList = false;
    notifyListeners();
  }

  @override
  void dispose() async {
    // TODO: implement dispose
    await Player.getInstance().release();
    super.dispose();
  }
}
