import 'package:music/models/automation/mv_detail_entity.dart';

mvDetailEntityFromJson(MvDetailEntity data, Map<String, dynamic> json) {
	if (json['loadingPic'] != null) {
		data.loadingPic = json['loadingPic'].toString();
	}
	if (json['bufferPic'] != null) {
		data.bufferPic = json['bufferPic'].toString();
	}
	if (json['loadingPicFS'] != null) {
		data.loadingPicFS = json['loadingPicFS'].toString();
	}
	if (json['bufferPicFS'] != null) {
		data.bufferPicFS = json['bufferPicFS'].toString();
	}
	if (json['subed'] != null) {
		data.subed = json['subed'];
	}
	if (json['mp'] != null) {
		data.mp = MvDetailMp().fromJson(json['mp']);
	}
	if (json['data'] != null) {
		data.data = MvDetailData().fromJson(json['data']);
	}
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	return data;
}

Map<String, dynamic> mvDetailEntityToJson(MvDetailEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['loadingPic'] = entity.loadingPic;
	data['bufferPic'] = entity.bufferPic;
	data['loadingPicFS'] = entity.loadingPicFS;
	data['bufferPicFS'] = entity.bufferPicFS;
	data['subed'] = entity.subed;
	data['mp'] = entity.mp?.toJson();
	data['data'] = entity.data?.toJson();
	data['code'] = entity.code;
	return data;
}

mvDetailMpFromJson(MvDetailMp data, Map<String, dynamic> json) {
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
	if (json['mvFee'] != null) {
		data.mvFee = json['mvFee'] is String
				? int.tryParse(json['mvFee'])
				: json['mvFee'].toInt();
	}
	if (json['payed'] != null) {
		data.payed = json['payed'] is String
				? int.tryParse(json['payed'])
				: json['payed'].toInt();
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
	if (json['cp'] != null) {
		data.cp = json['cp'] is String
				? int.tryParse(json['cp'])
				: json['cp'].toInt();
	}
	if (json['sid'] != null) {
		data.sid = json['sid'] is String
				? int.tryParse(json['sid'])
				: json['sid'].toInt();
	}
	if (json['st'] != null) {
		data.st = json['st'] is String
				? int.tryParse(json['st'])
				: json['st'].toInt();
	}
	if (json['normal'] != null) {
		data.normal = json['normal'];
	}
	if (json['unauthorized'] != null) {
		data.unauthorized = json['unauthorized'];
	}
	if (json['msg'] != null) {
		data.msg = json['msg'];
	}
	return data;
}

Map<String, dynamic> mvDetailMpToJson(MvDetailMp entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['fee'] = entity.fee;
	data['mvFee'] = entity.mvFee;
	data['payed'] = entity.payed;
	data['pl'] = entity.pl;
	data['dl'] = entity.dl;
	data['cp'] = entity.cp;
	data['sid'] = entity.sid;
	data['st'] = entity.st;
	data['normal'] = entity.normal;
	data['unauthorized'] = entity.unauthorized;
	data['msg'] = entity.msg;
	return data;
}

mvDetailDataFromJson(MvDetailData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['artistId'] != null) {
		data.artistId = json['artistId'] is String
				? int.tryParse(json['artistId'])
				: json['artistId'].toInt();
	}
	if (json['artistName'] != null) {
		data.artistName = json['artistName'].toString();
	}
	if (json['briefDesc'] != null) {
		data.briefDesc = json['briefDesc'].toString();
	}
	if (json['desc'] != null) {
		data.desc = json['desc'].toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover'].toString();
	}
	if (json['coverId_str'] != null) {
		data.coveridStr = json['coverId_str'].toString();
	}
	if (json['coverId'] != null) {
		data.coverId = json['coverId'] is String
				? int.tryParse(json['coverId'])
				: json['coverId'].toInt();
	}
	if (json['playCount'] != null) {
		data.playCount = json['playCount'] is String
				? int.tryParse(json['playCount'])
				: json['playCount'].toInt();
	}
	if (json['subCount'] != null) {
		data.subCount = json['subCount'] is String
				? int.tryParse(json['subCount'])
				: json['subCount'].toInt();
	}
	if (json['shareCount'] != null) {
		data.shareCount = json['shareCount'] is String
				? int.tryParse(json['shareCount'])
				: json['shareCount'].toInt();
	}
	if (json['commentCount'] != null) {
		data.commentCount = json['commentCount'] is String
				? int.tryParse(json['commentCount'])
				: json['commentCount'].toInt();
	}
	if (json['duration'] != null) {
		data.duration = json['duration'] is String
				? int.tryParse(json['duration'])
				: json['duration'].toInt();
	}
	if (json['nType'] != null) {
		data.nType = json['nType'] is String
				? int.tryParse(json['nType'])
				: json['nType'].toInt();
	}
	if (json['publishTime'] != null) {
		data.publishTime = json['publishTime'].toString();
	}
	if (json['price'] != null) {
		data.price = json['price'];
	}
	if (json['brs'] != null) {
		data.brs = (json['brs'] as List).map((v) => MvDetailDataBrs().fromJson(v)).toList();
	}
	if (json['artists'] != null) {
		data.artists = (json['artists'] as List).map((v) => MvDetailDataArtists().fromJson(v)).toList();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['commentThreadId'] != null) {
		data.commentThreadId = json['commentThreadId'].toString();
	}
	if (json['videoGroup'] != null) {
		data.videoGroup = (json['videoGroup'] as List).map((v) => v).toList().cast<dynamic>();
	}
	return data;
}

Map<String, dynamic> mvDetailDataToJson(MvDetailData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['artistId'] = entity.artistId;
	data['artistName'] = entity.artistName;
	data['briefDesc'] = entity.briefDesc;
	data['desc'] = entity.desc;
	data['cover'] = entity.cover;
	data['coverId_str'] = entity.coveridStr;
	data['coverId'] = entity.coverId;
	data['playCount'] = entity.playCount;
	data['subCount'] = entity.subCount;
	data['shareCount'] = entity.shareCount;
	data['commentCount'] = entity.commentCount;
	data['duration'] = entity.duration;
	data['nType'] = entity.nType;
	data['publishTime'] = entity.publishTime;
	data['price'] = entity.price;
	data['brs'] =  entity.brs?.map((v) => v.toJson())?.toList();
	data['artists'] =  entity.artists?.map((v) => v.toJson())?.toList();
	data['alias'] = entity.alias;
	data['commentThreadId'] = entity.commentThreadId;
	data['videoGroup'] = entity.videoGroup;
	return data;
}

mvDetailDataBrsFromJson(MvDetailDataBrs data, Map<String, dynamic> json) {
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['br'] != null) {
		data.br = json['br'] is String
				? int.tryParse(json['br'])
				: json['br'].toInt();
	}
	if (json['point'] != null) {
		data.point = json['point'] is String
				? int.tryParse(json['point'])
				: json['point'].toInt();
	}
	return data;
}

Map<String, dynamic> mvDetailDataBrsToJson(MvDetailDataBrs entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['size'] = entity.size;
	data['br'] = entity.br;
	data['point'] = entity.point;
	return data;
}

mvDetailDataArtistsFromJson(MvDetailDataArtists data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['img1v1Url'] != null) {
		data.img1v1Url = json['img1v1Url'];
	}
	if (json['followed'] != null) {
		data.followed = json['followed'];
	}
	return data;
}

Map<String, dynamic> mvDetailDataArtistsToJson(MvDetailDataArtists entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['img1v1Url'] = entity.img1v1Url;
	data['followed'] = entity.followed;
	return data;
}
