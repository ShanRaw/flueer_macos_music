import 'package:music/models/player_item.dart';
import 'package:music/state/music.dart';

class CustomFunction {
  CustomFunction._();

  //处理时间为时分
  static String toHourMinute(num dt) {
    return '${(dt / 1000 ~/ 60).toString().padLeft(2, '0')}:${(dt ~/ 1000 % 60).toString().padLeft(2, '0')}';
  }

  //转换播放类型为文本
  static String playTypeToText(PlayControlState playControlState) {
    switch (playControlState) {
      case PlayControlState.ONE:
        return '单曲循环';
      case PlayControlState.LOOP:
        return '列表循环';
      case PlayControlState.RANDOM_LOOP:
        return '随机播放';
    }
  }

  //去重
  static List<PlayerItem> deleteDuplicate(List<PlayerItem> list) {
    List<PlayerItem> res = [];

    for (int x = 0; x < list.length; x++) {
      final item = list[x];
      if (res.indexWhere((element) => element.id == item.id) == -1)
        res.add(item);
    }
    return res;
  }
}
