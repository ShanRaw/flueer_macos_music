import 'package:audioplayers/audioplayers.dart';

class Player {
  static Player? _player;
  late AudioPlayer audioPlayer;

  Player() {
    audioPlayer =
        AudioPlayer(mode: PlayerMode.LOW_LATENCY, playerId: 'sr.music');
  }

  static Player getInstance() {
    if (_player == null) {
      _player = Player();
    }
    return _player!;
  }

  Future<int> play(String url, {double volume = 1,Duration? duration}) async {
    return await audioPlayer.play(url, volume: volume,position: duration);
  }

  Future<int> pause() async {
    return await audioPlayer.pause();
  }

  Future<int> resume() async {
    return await audioPlayer.resume();
  }

  Future<int> stop() async {
    return await audioPlayer.stop();
  }

  Future<int> release() async {
    return await audioPlayer.release();
  }
}
