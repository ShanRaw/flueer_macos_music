import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music/config/apis.dart';
import 'package:music/models/automation/mv_url_entity.dart';
import 'package:music/models/automation/top_mv_entity.dart';
import 'package:music/utils/http.dart';

class MvDetail extends StatefulWidget {
  @override
  _MvDetail createState() => _MvDetail();
}

class _MvDetail extends State<MvDetail> {
  Player? _player;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      getUrl();
    });
  }

  getUrl() async {
    final TopMvData item =
        ModalRoute.of(context)?.settings.arguments as TopMvData;
    final MvUrlEntity mvUrl = MvUrlEntity()
        .fromJson(await Http.api(api: Apis.mvUrl, params: {"id": item.id}));
    setState(() {
      _player = Player(id: 777777);
      _player?.open(Media.network(mvUrl.data?.url ?? ''), autoStart: true);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff252524),
      child: _player == null
          ? Container(
              alignment: Alignment.center,
              child: SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                  valueColor: AlwaysStoppedAnimation(Colors.redAccent),
                ),
              ),
            )
          : Video(player: _player),
    );
  }
}
