import 'package:music/models/automation/personalized_newsong_entity.dart';

personalizedNewsongEntityFromJson(PersonalizedNewsongEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['category'] != null) {
		data.category = json['category'] is String
				? int.tryParse(json['category'])
				: json['category'].toInt();
	}
	if (json['result'] != null) {
		data.result = (json['result'] as List).map((v) => PersonalizedNewsongResult().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongEntityToJson(PersonalizedNewsongEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['category'] = entity.category;
	data['result'] =  entity.result?.map((v) => v.toJson())?.toList();
	return data;
}

personalizedNewsongResultFromJson(PersonalizedNewsongResult data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['copywriter'] != null) {
		data.copywriter = json['copywriter'];
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['canDislike'] != null) {
		data.canDislike = json['canDislike'];
	}
	if (json['trackNumberUpdateTime'] != null) {
		data.trackNumberUpdateTime = json['trackNumberUpdateTime'];
	}
	if (json['song'] != null) {
		data.song = PersonalizedNewsongResultSong().fromJson(json['song']);
	}
	if (json['alg'] != null) {
		data.alg = json['alg'].toString();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultToJson(PersonalizedNewsongResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['type'] = entity.type;
	data['name'] = entity.name;
	data['copywriter'] = entity.copywriter;
	data['picUrl'] = entity.picUrl;
	data['canDislike'] = entity.canDislike;
	data['trackNumberUpdateTime'] = entity.trackNumberUpdateTime;
	data['song'] = entity.song?.toJson();
	data['alg'] = entity.alg;
	return data;
}

personalizedNewsongResultSongFromJson(PersonalizedNewsongResultSong data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['position'] != null) {
		data.position = json['position'] is String
				? int.tryParse(json['position'])
				: json['position'].toInt();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['fee'] != null) {
		data.fee = json['fee'] is String
				? int.tryParse(json['fee'])
				: json['fee'].toInt();
	}
	if (json['copyrightId'] != null) {
		data.copyrightId = json['copyrightId'] is String
				? int.tryParse(json['copyrightId'])
				: json['copyrightId'].toInt();
	}
	if (json['disc'] != null) {
		data.disc = json['disc'].toString();
	}
	if (json['no'] != null) {
		data.no = json['no'] is String
				? int.tryParse(json['no'])
				: json['no'].toInt();
	}
	if (json['artists'] != null) {
		data.artists = (json['artists'] as List).map((v) => PersonalizedNewsongResultSongArtists().fromJson(v)).toList();
	}
	if (json['album'] != null) {
		data.album = PersonalizedNewsongResultSongAlbum().fromJson(json['album']);
	}
	if (json['starred'] != null) {
		data.starred = json['starred'];
	}
	if (json['popularity'] != null) {
		data.popularity = json['popularity'] is String
				? int.tryParse(json['popularity'])
				: json['popularity'].toInt();
	}
	if (json['score'] != null) {
		data.score = json['score'] is String
				? int.tryParse(json['score'])
				: json['score'].toInt();
	}
	if (json['starredNum'] != null) {
		data.starredNum = json['starredNum'] is String
				? int.tryParse(json['starredNum'])
				: json['starredNum'].toInt();
	}
	if (json['duration'] != null) {
		data.duration = json['duration'] is String
				? int.tryParse(json['duration'])
				: json['duration'].toInt();
	}
	if (json['playedNum'] != null) {
		data.playedNum = json['playedNum'] is String
				? int.tryParse(json['playedNum'])
				: json['playedNum'].toInt();
	}
	if (json['dayPlays'] != null) {
		data.dayPlays = json['dayPlays'] is String
				? int.tryParse(json['dayPlays'])
				: json['dayPlays'].toInt();
	}
	if (json['hearTime'] != null) {
		data.hearTime = json['hearTime'] is String
				? int.tryParse(json['hearTime'])
				: json['hearTime'].toInt();
	}
	if (json['ringtone'] != null) {
		data.ringtone = json['ringtone'].toString();
	}
	if (json['crbt'] != null) {
		data.crbt = json['crbt'];
	}
	if (json['audition'] != null) {
		data.audition = json['audition'];
	}
	if (json['copyFrom'] != null) {
		data.copyFrom = json['copyFrom'].toString();
	}
	if (json['commentThreadId'] != null) {
		data.commentThreadId = json['commentThreadId'].toString();
	}
	if (json['rtUrl'] != null) {
		data.rtUrl = json['rtUrl'];
	}
	if (json['ftype'] != null) {
		data.ftype = json['ftype'] is String
				? int.tryParse(json['ftype'])
				: json['ftype'].toInt();
	}
	if (json['rtUrls'] != null) {
		data.rtUrls = (json['rtUrls'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['copyright'] != null) {
		data.copyright = json['copyright'] is String
				? int.tryParse(json['copyright'])
				: json['copyright'].toInt();
	}
	if (json['transName'] != null) {
		data.transName = json['transName'];
	}
	if (json['sign'] != null) {
		data.sign = json['sign'];
	}
	if (json['mark'] != null) {
		data.mark = json['mark'] is String
				? int.tryParse(json['mark'])
				: json['mark'].toInt();
	}
	if (json['originCoverType'] != null) {
		data.originCoverType = json['originCoverType'] is String
				? int.tryParse(json['originCoverType'])
				: json['originCoverType'].toInt();
	}
	if (json['originSongSimpleData'] != null) {
		data.originSongSimpleData = json['originSongSimpleData'];
	}
	if (json['single'] != null) {
		data.single = json['single'] is String
				? int.tryParse(json['single'])
				: json['single'].toInt();
	}
	if (json['noCopyrightRcmd'] != null) {
		data.noCopyrightRcmd = json['noCopyrightRcmd'];
	}
	if (json['rtype'] != null) {
		data.rtype = json['rtype'] is String
				? int.tryParse(json['rtype'])
				: json['rtype'].toInt();
	}
	if (json['rurl'] != null) {
		data.rurl = json['rurl'];
	}
	if (json['mvid'] != null) {
		data.mvid = json['mvid'] is String
				? int.tryParse(json['mvid'])
				: json['mvid'].toInt();
	}
	if (json['bMusic'] != null) {
		data.bMusic = PersonalizedNewsongResultSongBMusic().fromJson(json['bMusic']);
	}
	if (json['mp3Url'] != null) {
		data.mp3Url = json['mp3Url'];
	}
	if (json['hMusic'] != null) {
		data.hMusic = PersonalizedNewsongResultSongHMusic().fromJson(json['hMusic']);
	}
	if (json['mMusic'] != null) {
		data.mMusic = PersonalizedNewsongResultSongMMusic().fromJson(json['mMusic']);
	}
	if (json['lMusic'] != null) {
		data.lMusic = PersonalizedNewsongResultSongLMusic().fromJson(json['lMusic']);
	}
	if (json['exclusive'] != null) {
		data.exclusive = json['exclusive'];
	}
	if (json['privilege'] != null) {
		data.privilege = PersonalizedNewsongResultSongPrivilege().fromJson(json['privilege']);
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongToJson(PersonalizedNewsongResultSong entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['position'] = entity.position;
	data['alias'] = entity.alias;
	data['status'] = entity.status;
	data['fee'] = entity.fee;
	data['copyrightId'] = entity.copyrightId;
	data['disc'] = entity.disc;
	data['no'] = entity.no;
	data['artists'] =  entity.artists?.map((v) => v.toJson())?.toList();
	data['album'] = entity.album?.toJson();
	data['starred'] = entity.starred;
	data['popularity'] = entity.popularity;
	data['score'] = entity.score;
	data['starredNum'] = entity.starredNum;
	data['duration'] = entity.duration;
	data['playedNum'] = entity.playedNum;
	data['dayPlays'] = entity.dayPlays;
	data['hearTime'] = entity.hearTime;
	data['ringtone'] = entity.ringtone;
	data['crbt'] = entity.crbt;
	data['audition'] = entity.audition;
	data['copyFrom'] = entity.copyFrom;
	data['commentThreadId'] = entity.commentThreadId;
	data['rtUrl'] = entity.rtUrl;
	data['ftype'] = entity.ftype;
	data['rtUrls'] = entity.rtUrls;
	data['copyright'] = entity.copyright;
	data['transName'] = entity.transName;
	data['sign'] = entity.sign;
	data['mark'] = entity.mark;
	data['originCoverType'] = entity.originCoverType;
	data['originSongSimpleData'] = entity.originSongSimpleData;
	data['single'] = entity.single;
	data['noCopyrightRcmd'] = entity.noCopyrightRcmd;
	data['rtype'] = entity.rtype;
	data['rurl'] = entity.rurl;
	data['mvid'] = entity.mvid;
	data['bMusic'] = entity.bMusic?.toJson();
	data['mp3Url'] = entity.mp3Url;
	data['hMusic'] = entity.hMusic?.toJson();
	data['mMusic'] = entity.mMusic?.toJson();
	data['lMusic'] = entity.lMusic?.toJson();
	data['exclusive'] = entity.exclusive;
	data['privilege'] = entity.privilege?.toJson();
	return data;
}

personalizedNewsongResultSongArtistsFromJson(PersonalizedNewsongResultSongArtists data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['img1v1Id'] != null) {
		data.img1v1Id = json['img1v1Id'] is String
				? int.tryParse(json['img1v1Id'])
				: json['img1v1Id'].toInt();
	}
	if (json['briefDesc'] != null) {
		data.briefDesc = json['briefDesc'].toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['img1v1Url'] != null) {
		data.img1v1Url = json['img1v1Url'].toString();
	}
	if (json['albumSize'] != null) {
		data.albumSize = json['albumSize'] is String
				? int.tryParse(json['albumSize'])
				: json['albumSize'].toInt();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['trans'] != null) {
		data.trans = json['trans'].toString();
	}
	if (json['musicSize'] != null) {
		data.musicSize = json['musicSize'] is String
				? int.tryParse(json['musicSize'])
				: json['musicSize'].toInt();
	}
	if (json['topicPerson'] != null) {
		data.topicPerson = json['topicPerson'] is String
				? int.tryParse(json['topicPerson'])
				: json['topicPerson'].toInt();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongArtistsToJson(PersonalizedNewsongResultSongArtists entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['picId'] = entity.picId;
	data['img1v1Id'] = entity.img1v1Id;
	data['briefDesc'] = entity.briefDesc;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['albumSize'] = entity.albumSize;
	data['alias'] = entity.alias;
	data['trans'] = entity.trans;
	data['musicSize'] = entity.musicSize;
	data['topicPerson'] = entity.topicPerson;
	return data;
}

personalizedNewsongResultSongAlbumFromJson(PersonalizedNewsongResultSongAlbum data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['type'] != null) {
		data.type = json['type'].toString();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['blurPicUrl'] != null) {
		data.blurPicUrl = json['blurPicUrl'].toString();
	}
	if (json['companyId'] != null) {
		data.companyId = json['companyId'] is String
				? int.tryParse(json['companyId'])
				: json['companyId'].toInt();
	}
	if (json['pic'] != null) {
		data.pic = json['pic'] is String
				? int.tryParse(json['pic'])
				: json['pic'].toInt();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['publishTime'] != null) {
		data.publishTime = json['publishTime'] is String
				? int.tryParse(json['publishTime'])
				: json['publishTime'].toInt();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['tags'] != null) {
		data.tags = json['tags'].toString();
	}
	if (json['company'] != null) {
		data.company = json['company'].toString();
	}
	if (json['briefDesc'] != null) {
		data.briefDesc = json['briefDesc'].toString();
	}
	if (json['artist'] != null) {
		data.artist = PersonalizedNewsongResultSongAlbumArtist().fromJson(json['artist']);
	}
	if (json['songs'] != null) {
		data.songs = (json['songs'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['copyrightId'] != null) {
		data.copyrightId = json['copyrightId'] is String
				? int.tryParse(json['copyrightId'])
				: json['copyrightId'].toInt();
	}
	if (json['commentThreadId'] != null) {
		data.commentThreadId = json['commentThreadId'].toString();
	}
	if (json['artists'] != null) {
		data.artists = (json['artists'] as List).map((v) => PersonalizedNewsongResultSongAlbumArtists().fromJson(v)).toList();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'].toString();
	}
	if (json['transName'] != null) {
		data.transName = json['transName'];
	}
	if (json['onSale'] != null) {
		data.onSale = json['onSale'];
	}
	if (json['mark'] != null) {
		data.mark = json['mark'] is String
				? int.tryParse(json['mark'])
				: json['mark'].toInt();
	}
	if (json['picId_str'] != null) {
		data.picidStr = json['picId_str'].toString();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongAlbumToJson(PersonalizedNewsongResultSongAlbum entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['type'] = entity.type;
	data['size'] = entity.size;
	data['picId'] = entity.picId;
	data['blurPicUrl'] = entity.blurPicUrl;
	data['companyId'] = entity.companyId;
	data['pic'] = entity.pic;
	data['picUrl'] = entity.picUrl;
	data['publishTime'] = entity.publishTime;
	data['description'] = entity.description;
	data['tags'] = entity.tags;
	data['company'] = entity.company;
	data['briefDesc'] = entity.briefDesc;
	data['artist'] = entity.artist?.toJson();
	data['songs'] = entity.songs;
	data['alias'] = entity.alias;
	data['status'] = entity.status;
	data['copyrightId'] = entity.copyrightId;
	data['commentThreadId'] = entity.commentThreadId;
	data['artists'] =  entity.artists?.map((v) => v.toJson())?.toList();
	data['subType'] = entity.subType;
	data['transName'] = entity.transName;
	data['onSale'] = entity.onSale;
	data['mark'] = entity.mark;
	data['picId_str'] = entity.picidStr;
	return data;
}

personalizedNewsongResultSongAlbumArtistFromJson(PersonalizedNewsongResultSongAlbumArtist data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['img1v1Id'] != null) {
		data.img1v1Id = json['img1v1Id'] is String
				? int.tryParse(json['img1v1Id'])
				: json['img1v1Id'].toInt();
	}
	if (json['briefDesc'] != null) {
		data.briefDesc = json['briefDesc'].toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['img1v1Url'] != null) {
		data.img1v1Url = json['img1v1Url'].toString();
	}
	if (json['albumSize'] != null) {
		data.albumSize = json['albumSize'] is String
				? int.tryParse(json['albumSize'])
				: json['albumSize'].toInt();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['trans'] != null) {
		data.trans = json['trans'].toString();
	}
	if (json['musicSize'] != null) {
		data.musicSize = json['musicSize'] is String
				? int.tryParse(json['musicSize'])
				: json['musicSize'].toInt();
	}
	if (json['topicPerson'] != null) {
		data.topicPerson = json['topicPerson'] is String
				? int.tryParse(json['topicPerson'])
				: json['topicPerson'].toInt();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongAlbumArtistToJson(PersonalizedNewsongResultSongAlbumArtist entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['picId'] = entity.picId;
	data['img1v1Id'] = entity.img1v1Id;
	data['briefDesc'] = entity.briefDesc;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['albumSize'] = entity.albumSize;
	data['alias'] = entity.alias;
	data['trans'] = entity.trans;
	data['musicSize'] = entity.musicSize;
	data['topicPerson'] = entity.topicPerson;
	return data;
}

personalizedNewsongResultSongAlbumArtistsFromJson(PersonalizedNewsongResultSongAlbumArtists data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['img1v1Id'] != null) {
		data.img1v1Id = json['img1v1Id'] is String
				? int.tryParse(json['img1v1Id'])
				: json['img1v1Id'].toInt();
	}
	if (json['briefDesc'] != null) {
		data.briefDesc = json['briefDesc'].toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['img1v1Url'] != null) {
		data.img1v1Url = json['img1v1Url'].toString();
	}
	if (json['albumSize'] != null) {
		data.albumSize = json['albumSize'] is String
				? int.tryParse(json['albumSize'])
				: json['albumSize'].toInt();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['trans'] != null) {
		data.trans = json['trans'].toString();
	}
	if (json['musicSize'] != null) {
		data.musicSize = json['musicSize'] is String
				? int.tryParse(json['musicSize'])
				: json['musicSize'].toInt();
	}
	if (json['topicPerson'] != null) {
		data.topicPerson = json['topicPerson'] is String
				? int.tryParse(json['topicPerson'])
				: json['topicPerson'].toInt();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongAlbumArtistsToJson(PersonalizedNewsongResultSongAlbumArtists entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['picId'] = entity.picId;
	data['img1v1Id'] = entity.img1v1Id;
	data['briefDesc'] = entity.briefDesc;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['albumSize'] = entity.albumSize;
	data['alias'] = entity.alias;
	data['trans'] = entity.trans;
	data['musicSize'] = entity.musicSize;
	data['topicPerson'] = entity.topicPerson;
	return data;
}

personalizedNewsongResultSongBMusicFromJson(PersonalizedNewsongResultSongBMusic data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'];
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['extension'] != null) {
		data.extension = json['extension'].toString();
	}
	if (json['sr'] != null) {
		data.sr = json['sr'] is String
				? int.tryParse(json['sr'])
				: json['sr'].toInt();
	}
	if (json['dfsId'] != null) {
		data.dfsId = json['dfsId'] is String
				? int.tryParse(json['dfsId'])
				: json['dfsId'].toInt();
	}
	if (json['bitrate'] != null) {
		data.bitrate = json['bitrate'] is String
				? int.tryParse(json['bitrate'])
				: json['bitrate'].toInt();
	}
	if (json['playTime'] != null) {
		data.playTime = json['playTime'] is String
				? int.tryParse(json['playTime'])
				: json['playTime'].toInt();
	}
	if (json['volumeDelta'] != null) {
		data.volumeDelta = json['volumeDelta'] is String
				? int.tryParse(json['volumeDelta'])
				: json['volumeDelta'].toInt();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongBMusicToJson(PersonalizedNewsongResultSongBMusic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['size'] = entity.size;
	data['extension'] = entity.extension;
	data['sr'] = entity.sr;
	data['dfsId'] = entity.dfsId;
	data['bitrate'] = entity.bitrate;
	data['playTime'] = entity.playTime;
	data['volumeDelta'] = entity.volumeDelta;
	return data;
}

personalizedNewsongResultSongHMusicFromJson(PersonalizedNewsongResultSongHMusic data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'];
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['extension'] != null) {
		data.extension = json['extension'].toString();
	}
	if (json['sr'] != null) {
		data.sr = json['sr'] is String
				? int.tryParse(json['sr'])
				: json['sr'].toInt();
	}
	if (json['dfsId'] != null) {
		data.dfsId = json['dfsId'] is String
				? int.tryParse(json['dfsId'])
				: json['dfsId'].toInt();
	}
	if (json['bitrate'] != null) {
		data.bitrate = json['bitrate'] is String
				? int.tryParse(json['bitrate'])
				: json['bitrate'].toInt();
	}
	if (json['playTime'] != null) {
		data.playTime = json['playTime'] is String
				? int.tryParse(json['playTime'])
				: json['playTime'].toInt();
	}
	if (json['volumeDelta'] != null) {
		data.volumeDelta = json['volumeDelta'] is String
				? int.tryParse(json['volumeDelta'])
				: json['volumeDelta'].toInt();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongHMusicToJson(PersonalizedNewsongResultSongHMusic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['size'] = entity.size;
	data['extension'] = entity.extension;
	data['sr'] = entity.sr;
	data['dfsId'] = entity.dfsId;
	data['bitrate'] = entity.bitrate;
	data['playTime'] = entity.playTime;
	data['volumeDelta'] = entity.volumeDelta;
	return data;
}

personalizedNewsongResultSongMMusicFromJson(PersonalizedNewsongResultSongMMusic data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'];
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['extension'] != null) {
		data.extension = json['extension'].toString();
	}
	if (json['sr'] != null) {
		data.sr = json['sr'] is String
				? int.tryParse(json['sr'])
				: json['sr'].toInt();
	}
	if (json['dfsId'] != null) {
		data.dfsId = json['dfsId'] is String
				? int.tryParse(json['dfsId'])
				: json['dfsId'].toInt();
	}
	if (json['bitrate'] != null) {
		data.bitrate = json['bitrate'] is String
				? int.tryParse(json['bitrate'])
				: json['bitrate'].toInt();
	}
	if (json['playTime'] != null) {
		data.playTime = json['playTime'] is String
				? int.tryParse(json['playTime'])
				: json['playTime'].toInt();
	}
	if (json['volumeDelta'] != null) {
		data.volumeDelta = json['volumeDelta'] is String
				? int.tryParse(json['volumeDelta'])
				: json['volumeDelta'].toInt();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongMMusicToJson(PersonalizedNewsongResultSongMMusic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['size'] = entity.size;
	data['extension'] = entity.extension;
	data['sr'] = entity.sr;
	data['dfsId'] = entity.dfsId;
	data['bitrate'] = entity.bitrate;
	data['playTime'] = entity.playTime;
	data['volumeDelta'] = entity.volumeDelta;
	return data;
}

personalizedNewsongResultSongLMusicFromJson(PersonalizedNewsongResultSongLMusic data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'];
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['extension'] != null) {
		data.extension = json['extension'].toString();
	}
	if (json['sr'] != null) {
		data.sr = json['sr'] is String
				? int.tryParse(json['sr'])
				: json['sr'].toInt();
	}
	if (json['dfsId'] != null) {
		data.dfsId = json['dfsId'] is String
				? int.tryParse(json['dfsId'])
				: json['dfsId'].toInt();
	}
	if (json['bitrate'] != null) {
		data.bitrate = json['bitrate'] is String
				? int.tryParse(json['bitrate'])
				: json['bitrate'].toInt();
	}
	if (json['playTime'] != null) {
		data.playTime = json['playTime'] is String
				? int.tryParse(json['playTime'])
				: json['playTime'].toInt();
	}
	if (json['volumeDelta'] != null) {
		data.volumeDelta = json['volumeDelta'] is String
				? int.tryParse(json['volumeDelta'])
				: json['volumeDelta'].toInt();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongLMusicToJson(PersonalizedNewsongResultSongLMusic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['size'] = entity.size;
	data['extension'] = entity.extension;
	data['sr'] = entity.sr;
	data['dfsId'] = entity.dfsId;
	data['bitrate'] = entity.bitrate;
	data['playTime'] = entity.playTime;
	data['volumeDelta'] = entity.volumeDelta;
	return data;
}

personalizedNewsongResultSongPrivilegeFromJson(PersonalizedNewsongResultSongPrivilege data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['fee'] != null) {
		data.fee = json['fee'] is String
				? int.tryParse(json['fee'])
				: json['fee'].toInt();
	}
	if (json['payed'] != null) {
		data.payed = json['payed'] is String
				? int.tryParse(json['payed'])
				: json['payed'].toInt();
	}
	if (json['st'] != null) {
		data.st = json['st'] is String
				? int.tryParse(json['st'])
				: json['st'].toInt();
	}
	if (json['pl'] != null) {
		data.pl = json['pl'] is String
				? int.tryParse(json['pl'])
				: json['pl'].toInt();
	}
	if (json['dl'] != null) {
		data.dl = json['dl'] is String
				? int.tryParse(json['dl'])
				: json['dl'].toInt();
	}
	if (json['sp'] != null) {
		data.sp = json['sp'] is String
				? int.tryParse(json['sp'])
				: json['sp'].toInt();
	}
	if (json['cp'] != null) {
		data.cp = json['cp'] is String
				? int.tryParse(json['cp'])
				: json['cp'].toInt();
	}
	if (json['subp'] != null) {
		data.subp = json['subp'] is String
				? int.tryParse(json['subp'])
				: json['subp'].toInt();
	}
	if (json['cs'] != null) {
		data.cs = json['cs'];
	}
	if (json['maxbr'] != null) {
		data.maxbr = json['maxbr'] is String
				? int.tryParse(json['maxbr'])
				: json['maxbr'].toInt();
	}
	if (json['fl'] != null) {
		data.fl = json['fl'] is String
				? int.tryParse(json['fl'])
				: json['fl'].toInt();
	}
	if (json['toast'] != null) {
		data.toast = json['toast'];
	}
	if (json['flag'] != null) {
		data.flag = json['flag'] is String
				? int.tryParse(json['flag'])
				: json['flag'].toInt();
	}
	if (json['preSell'] != null) {
		data.preSell = json['preSell'];
	}
	if (json['playMaxbr'] != null) {
		data.playMaxbr = json['playMaxbr'] is String
				? int.tryParse(json['playMaxbr'])
				: json['playMaxbr'].toInt();
	}
	if (json['downloadMaxbr'] != null) {
		data.downloadMaxbr = json['downloadMaxbr'] is String
				? int.tryParse(json['downloadMaxbr'])
				: json['downloadMaxbr'].toInt();
	}
	if (json['rscl'] != null) {
		data.rscl = json['rscl'];
	}
	if (json['freeTrialPrivilege'] != null) {
		data.freeTrialPrivilege = PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege().fromJson(json['freeTrialPrivilege']);
	}
	if (json['chargeInfoList'] != null) {
		data.chargeInfoList = (json['chargeInfoList'] as List).map((v) => PersonalizedNewsongResultSongPrivilegeChargeInfoList().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongPrivilegeToJson(PersonalizedNewsongResultSongPrivilege entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['fee'] = entity.fee;
	data['payed'] = entity.payed;
	data['st'] = entity.st;
	data['pl'] = entity.pl;
	data['dl'] = entity.dl;
	data['sp'] = entity.sp;
	data['cp'] = entity.cp;
	data['subp'] = entity.subp;
	data['cs'] = entity.cs;
	data['maxbr'] = entity.maxbr;
	data['fl'] = entity.fl;
	data['toast'] = entity.toast;
	data['flag'] = entity.flag;
	data['preSell'] = entity.preSell;
	data['playMaxbr'] = entity.playMaxbr;
	data['downloadMaxbr'] = entity.downloadMaxbr;
	data['rscl'] = entity.rscl;
	data['freeTrialPrivilege'] = entity.freeTrialPrivilege?.toJson();
	data['chargeInfoList'] =  entity.chargeInfoList?.map((v) => v.toJson())?.toList();
	return data;
}

personalizedNewsongResultSongPrivilegeFreeTrialPrivilegeFromJson(PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege data, Map<String, dynamic> json) {
	if (json['resConsumable'] != null) {
		data.resConsumable = json['resConsumable'];
	}
	if (json['userConsumable'] != null) {
		data.userConsumable = json['userConsumable'];
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongPrivilegeFreeTrialPrivilegeToJson(PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	return data;
}

personalizedNewsongResultSongPrivilegeChargeInfoListFromJson(PersonalizedNewsongResultSongPrivilegeChargeInfoList data, Map<String, dynamic> json) {
	if (json['rate'] != null) {
		data.rate = json['rate'] is String
				? int.tryParse(json['rate'])
				: json['rate'].toInt();
	}
	if (json['chargeUrl'] != null) {
		data.chargeUrl = json['chargeUrl'];
	}
	if (json['chargeMessage'] != null) {
		data.chargeMessage = json['chargeMessage'];
	}
	if (json['chargeType'] != null) {
		data.chargeType = json['chargeType'] is String
				? int.tryParse(json['chargeType'])
				: json['chargeType'].toInt();
	}
	return data;
}

Map<String, dynamic> personalizedNewsongResultSongPrivilegeChargeInfoListToJson(PersonalizedNewsongResultSongPrivilegeChargeInfoList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['rate'] = entity.rate;
	data['chargeUrl'] = entity.chargeUrl;
	data['chargeMessage'] = entity.chargeMessage;
	data['chargeType'] = entity.chargeType;
	return data;
}
