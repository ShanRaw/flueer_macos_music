import 'package:music/models/automation/top_mv_entity.dart';

topMvEntityFromJson(TopMvEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['data'] != null) {
		data.data = (json['data'] as List).map((v) => TopMvData().fromJson(v)).toList();
	}
	if (json['hasMore'] != null) {
		data.hasMore = json['hasMore'];
	}
	if (json['updateTime'] != null) {
		data.updateTime = json['updateTime'] is String
				? int.tryParse(json['updateTime'])
				: json['updateTime'].toInt();
	}
	return data;
}

Map<String, dynamic> topMvEntityToJson(TopMvEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['data'] =  entity.data?.map((v) => v.toJson())?.toList();
	data['hasMore'] = entity.hasMore;
	data['updateTime'] = entity.updateTime;
	return data;
}

topMvDataFromJson(TopMvData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['cover'] != null) {
		data.cover = json['cover'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['playCount'] != null) {
		data.playCount = json['playCount'] is String
				? int.tryParse(json['playCount'])
				: json['playCount'].toInt();
	}
	if (json['briefDesc'] != null) {
		data.briefDesc = json['briefDesc'].toString();
	}
	if (json['desc'] != null) {
		data.desc = json['desc'];
	}
	if (json['artistName'] != null) {
		data.artistName = json['artistName'].toString();
	}
	if (json['artistId'] != null) {
		data.artistId = json['artistId'] is String
				? int.tryParse(json['artistId'])
				: json['artistId'].toInt();
	}
	if (json['duration'] != null) {
		data.duration = json['duration'] is String
				? int.tryParse(json['duration'])
				: json['duration'].toInt();
	}
	if (json['mark'] != null) {
		data.mark = json['mark'] is String
				? int.tryParse(json['mark'])
				: json['mark'].toInt();
	}
	if (json['mv'] != null) {
		data.mv = TopMvDataMv().fromJson(json['mv']);
	}
	if (json['lastRank'] != null) {
		data.lastRank = json['lastRank'] is String
				? int.tryParse(json['lastRank'])
				: json['lastRank'].toInt();
	}
	if (json['score'] != null) {
		data.score = json['score'] is String
				? int.tryParse(json['score'])
				: json['score'].toInt();
	}
	if (json['subed'] != null) {
		data.subed = json['subed'];
	}
	if (json['artists'] != null) {
		data.artists = (json['artists'] as List).map((v) => TopMvDataArtists().fromJson(v)).toList();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['transNames'] != null) {
		data.transNames = (json['transNames'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	return data;
}

Map<String, dynamic> topMvDataToJson(TopMvData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['cover'] = entity.cover;
	data['name'] = entity.name;
	data['playCount'] = entity.playCount;
	data['briefDesc'] = entity.briefDesc;
	data['desc'] = entity.desc;
	data['artistName'] = entity.artistName;
	data['artistId'] = entity.artistId;
	data['duration'] = entity.duration;
	data['mark'] = entity.mark;
	data['mv'] = entity.mv?.toJson();
	data['lastRank'] = entity.lastRank;
	data['score'] = entity.score;
	data['subed'] = entity.subed;
	data['artists'] =  entity.artists?.map((v) => v.toJson())?.toList();
	data['alias'] = entity.alias;
	data['transNames'] = entity.transNames;
	return data;
}

topMvDataMvFromJson(TopMvDataMv data, Map<String, dynamic> json) {
	if (json['authId'] != null) {
		data.authId = json['authId'] is String
				? int.tryParse(json['authId'])
				: json['authId'].toInt();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['appTitle'] != null) {
		data.appTitle = json['appTitle'].toString();
	}
	if (json['aliaName'] != null) {
		data.aliaName = json['aliaName'].toString();
	}
	if (json['transName'] != null) {
		data.transName = json['transName'].toString();
	}
	if (json['pic4v3'] != null) {
		data.pic4v3 = json['pic4v3'] is String
				? int.tryParse(json['pic4v3'])
				: json['pic4v3'].toInt();
	}
	if (json['pic16v9'] != null) {
		data.pic16v9 = json['pic16v9'] is String
				? int.tryParse(json['pic16v9'])
				: json['pic16v9'].toInt();
	}
	if (json['caption'] != null) {
		data.caption = json['caption'] is String
				? int.tryParse(json['caption'])
				: json['caption'].toInt();
	}
	if (json['captionLanguage'] != null) {
		data.captionLanguage = json['captionLanguage'].toString();
	}
	if (json['style'] != null) {
		data.style = json['style'];
	}
	if (json['mottos'] != null) {
		data.mottos = json['mottos'].toString();
	}
	if (json['oneword'] != null) {
		data.oneword = json['oneword'];
	}
	if (json['appword'] != null) {
		data.appword = json['appword'].toString();
	}
	if (json['stars'] != null) {
		data.stars = json['stars'];
	}
	if (json['desc'] != null) {
		data.desc = json['desc'].toString();
	}
	if (json['area'] != null) {
		data.area = json['area'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'].toString();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'].toString();
	}
	if (json['neteaseonly'] != null) {
		data.neteaseonly = json['neteaseonly'] is String
				? int.tryParse(json['neteaseonly'])
				: json['neteaseonly'].toInt();
	}
	if (json['upban'] != null) {
		data.upban = json['upban'] is String
				? int.tryParse(json['upban'])
				: json['upban'].toInt();
	}
	if (json['topWeeks'] != null) {
		data.topWeeks = json['topWeeks'].toString();
	}
	if (json['publishTime'] != null) {
		data.publishTime = json['publishTime'].toString();
	}
	if (json['online'] != null) {
		data.online = json['online'] is String
				? int.tryParse(json['online'])
				: json['online'].toInt();
	}
	if (json['score'] != null) {
		data.score = json['score'] is String
				? int.tryParse(json['score'])
				: json['score'].toInt();
	}
	if (json['plays'] != null) {
		data.plays = json['plays'] is String
				? int.tryParse(json['plays'])
				: json['plays'].toInt();
	}
	if (json['monthplays'] != null) {
		data.monthplays = json['monthplays'] is String
				? int.tryParse(json['monthplays'])
				: json['monthplays'].toInt();
	}
	if (json['weekplays'] != null) {
		data.weekplays = json['weekplays'] is String
				? int.tryParse(json['weekplays'])
				: json['weekplays'].toInt();
	}
	if (json['dayplays'] != null) {
		data.dayplays = json['dayplays'] is String
				? int.tryParse(json['dayplays'])
				: json['dayplays'].toInt();
	}
	if (json['fee'] != null) {
		data.fee = json['fee'] is String
				? int.tryParse(json['fee'])
				: json['fee'].toInt();
	}
	if (json['artists'] != null) {
		data.artists = (json['artists'] as List).map((v) => TopMvDataMvArtists().fromJson(v)).toList();
	}
	if (json['videos'] != null) {
		data.videos = (json['videos'] as List).map((v) => TopMvDataMvVideos().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> topMvDataMvToJson(TopMvDataMv entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['authId'] = entity.authId;
	data['status'] = entity.status;
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['appTitle'] = entity.appTitle;
	data['aliaName'] = entity.aliaName;
	data['transName'] = entity.transName;
	data['pic4v3'] = entity.pic4v3;
	data['pic16v9'] = entity.pic16v9;
	data['caption'] = entity.caption;
	data['captionLanguage'] = entity.captionLanguage;
	data['style'] = entity.style;
	data['mottos'] = entity.mottos;
	data['oneword'] = entity.oneword;
	data['appword'] = entity.appword;
	data['stars'] = entity.stars;
	data['desc'] = entity.desc;
	data['area'] = entity.area;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['neteaseonly'] = entity.neteaseonly;
	data['upban'] = entity.upban;
	data['topWeeks'] = entity.topWeeks;
	data['publishTime'] = entity.publishTime;
	data['online'] = entity.online;
	data['score'] = entity.score;
	data['plays'] = entity.plays;
	data['monthplays'] = entity.monthplays;
	data['weekplays'] = entity.weekplays;
	data['dayplays'] = entity.dayplays;
	data['fee'] = entity.fee;
	data['artists'] =  entity.artists?.map((v) => v.toJson())?.toList();
	data['videos'] =  entity.videos?.map((v) => v.toJson())?.toList();
	return data;
}

topMvDataMvArtistsFromJson(TopMvDataMvArtists data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	return data;
}

Map<String, dynamic> topMvDataMvArtistsToJson(TopMvDataMvArtists entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

topMvDataMvVideosFromJson(TopMvDataMvVideos data, Map<String, dynamic> json) {
	if (json['tagSign'] != null) {
		data.tagSign = TopMvDataMvVideosTagSign().fromJson(json['tagSign']);
	}
	if (json['tag'] != null) {
		data.tag = json['tag'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['duration'] != null) {
		data.duration = json['duration'] is String
				? int.tryParse(json['duration'])
				: json['duration'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['width'] != null) {
		data.width = json['width'] is String
				? int.tryParse(json['width'])
				: json['width'].toInt();
	}
	if (json['height'] != null) {
		data.height = json['height'] is String
				? int.tryParse(json['height'])
				: json['height'].toInt();
	}
	if (json['container'] != null) {
		data.container = json['container'].toString();
	}
	if (json['md5'] != null) {
		data.md5 = json['md5'].toString();
	}
	if (json['check'] != null) {
		data.check = json['check'];
	}
	return data;
}

Map<String, dynamic> topMvDataMvVideosToJson(TopMvDataMvVideos entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['tagSign'] = entity.tagSign?.toJson();
	data['tag'] = entity.tag;
	data['url'] = entity.url;
	data['duration'] = entity.duration;
	data['size'] = entity.size;
	data['width'] = entity.width;
	data['height'] = entity.height;
	data['container'] = entity.container;
	data['md5'] = entity.md5;
	data['check'] = entity.check;
	return data;
}

topMvDataMvVideosTagSignFromJson(TopMvDataMvVideosTagSign data, Map<String, dynamic> json) {
	if (json['br'] != null) {
		data.br = json['br'] is String
				? int.tryParse(json['br'])
				: json['br'].toInt();
	}
	if (json['type'] != null) {
		data.type = json['type'].toString();
	}
	if (json['tagSign'] != null) {
		data.tagSign = json['tagSign'].toString();
	}
	if (json['mvtype'] != null) {
		data.mvtype = json['mvtype'].toString();
	}
	if (json['resolution'] != null) {
		data.resolution = json['resolution'] is String
				? int.tryParse(json['resolution'])
				: json['resolution'].toInt();
	}
	return data;
}

Map<String, dynamic> topMvDataMvVideosTagSignToJson(TopMvDataMvVideosTagSign entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['br'] = entity.br;
	data['type'] = entity.type;
	data['tagSign'] = entity.tagSign;
	data['mvtype'] = entity.mvtype;
	data['resolution'] = entity.resolution;
	return data;
}

topMvDataArtistsFromJson(TopMvDataArtists data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	return data;
}

Map<String, dynamic> topMvDataArtistsToJson(TopMvDataArtists entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}
