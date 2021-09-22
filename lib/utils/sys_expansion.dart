import 'package:music/models/player_item.dart';

import 'function.dart';

extension IntExpansion on num {
  String get toHourMinute => CustomFunction.toHourMinute(this);
}

extension PlayerItemInterface on List<PlayerItem> {
  List<PlayerItem> get deleteDuplicate=>CustomFunction.deleteDuplicate(this);
}
