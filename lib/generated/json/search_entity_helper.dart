import 'package:music/models/automation/search_entity.dart';

searchEntityFromJson(SearchEntity data, Map<String, dynamic> json) {
	if (json['result'] != null) {
		data.result = SearchResult().fromJson(json['result']);
	}
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	return data;
}

Map<String, dynamic> searchEntityToJson(SearchEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['result'] = entity.result?.toJson();
	data['code'] = entity.code;
	return data;
}

searchResultFromJson(SearchResult data, Map<String, dynamic> json) {
	if (json['songs'] != null) {
		data.songs = (json['songs'] as List).map((v) => SearchResultSongs().fromJson(v)).toList();
	}
	if (json['hasMore'] != null) {
		data.hasMore = json['hasMore'];
	}
	if (json['songCount'] != null) {
		data.songCount = json['songCount'] is String
				? int.tryParse(json['songCount'])
				: json['songCount'].toInt();
	}
	return data;
}

Map<String, dynamic> searchResultToJson(SearchResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['songs'] =  entity.songs?.map((v) => v.toJson())?.toList();
	data['hasMore'] = entity.hasMore;
	data['songCount'] = entity.songCount;
	return data;
}

searchResultSongsFromJson(SearchResultSongs data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['artists'] != null) {
		data.artists = (json['artists'] as List).map((v) => SearchResultSongsArtists().fromJson(v)).toList();
	}
	if (json['album'] != null) {
		data.album = SearchResultSongsAlbum().fromJson(json['album']);
	}
	if (json['duration'] != null) {
		data.duration = json['duration'] is String
				? int.tryParse(json['duration'])
				: json['duration'].toInt();
	}
	if (json['copyrightId'] != null) {
		data.copyrightId = json['copyrightId'] is String
				? int.tryParse(json['copyrightId'])
				: json['copyrightId'].toInt();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['rtype'] != null) {
		data.rtype = json['rtype'] is String
				? int.tryParse(json['rtype'])
				: json['rtype'].toInt();
	}
	if (json['ftype'] != null) {
		data.ftype = json['ftype'] is String
				? int.tryParse(json['ftype'])
				: json['ftype'].toInt();
	}
	if (json['mvid'] != null) {
		data.mvid = json['mvid'] is String
				? int.tryParse(json['mvid'])
				: json['mvid'].toInt();
	}
	if (json['fee'] != null) {
		data.fee = json['fee'] is String
				? int.tryParse(json['fee'])
				: json['fee'].toInt();
	}
	if (json['rUrl'] != null) {
		data.rUrl = json['rUrl'];
	}
	if (json['mark'] != null) {
		data.mark = json['mark'] is String
				? int.tryParse(json['mark'])
				: json['mark'].toInt();
	}
	return data;
}

Map<String, dynamic> searchResultSongsToJson(SearchResultSongs entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['artists'] =  entity.artists?.map((v) => v.toJson())?.toList();
	data['album'] = entity.album?.toJson();
	data['duration'] = entity.duration;
	data['copyrightId'] = entity.copyrightId;
	data['status'] = entity.status;
	data['alias'] = entity.alias;
	data['rtype'] = entity.rtype;
	data['ftype'] = entity.ftype;
	data['mvid'] = entity.mvid;
	data['fee'] = entity.fee;
	data['rUrl'] = entity.rUrl;
	data['mark'] = entity.mark;
	return data;
}

searchResultSongsArtistsFromJson(SearchResultSongsArtists data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'];
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['albumSize'] != null) {
		data.albumSize = json['albumSize'] is String
				? int.tryParse(json['albumSize'])
				: json['albumSize'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['img1v1Url'] != null) {
		data.img1v1Url = json['img1v1Url'].toString();
	}
	if (json['img1v1'] != null) {
		data.img1v1 = json['img1v1'] is String
				? int.tryParse(json['img1v1'])
				: json['img1v1'].toInt();
	}
	if (json['trans'] != null) {
		data.trans = json['trans'];
	}
	return data;
}

Map<String, dynamic> searchResultSongsArtistsToJson(SearchResultSongsArtists entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	data['alias'] = entity.alias;
	data['albumSize'] = entity.albumSize;
	data['picId'] = entity.picId;
	data['img1v1Url'] = entity.img1v1Url;
	data['img1v1'] = entity.img1v1;
	data['trans'] = entity.trans;
	return data;
}

searchResultSongsAlbumFromJson(SearchResultSongsAlbum data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['artist'] != null) {
		data.artist = SearchResultSongsAlbumArtist().fromJson(json['artist']);
	}
	if (json['publishTime'] != null) {
		data.publishTime = json['publishTime'] is String
				? int.tryParse(json['publishTime'])
				: json['publishTime'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['copyrightId'] != null) {
		data.copyrightId = json['copyrightId'] is String
				? int.tryParse(json['copyrightId'])
				: json['copyrightId'].toInt();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['mark'] != null) {
		data.mark = json['mark'] is String
				? int.tryParse(json['mark'])
				: json['mark'].toInt();
	}
	return data;
}

Map<String, dynamic> searchResultSongsAlbumToJson(SearchResultSongsAlbum entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['artist'] = entity.artist?.toJson();
	data['publishTime'] = entity.publishTime;
	data['size'] = entity.size;
	data['copyrightId'] = entity.copyrightId;
	data['status'] = entity.status;
	data['picId'] = entity.picId;
	data['mark'] = entity.mark;
	return data;
}

searchResultSongsAlbumArtistFromJson(SearchResultSongsAlbumArtist data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'];
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['albumSize'] != null) {
		data.albumSize = json['albumSize'] is String
				? int.tryParse(json['albumSize'])
				: json['albumSize'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['img1v1Url'] != null) {
		data.img1v1Url = json['img1v1Url'].toString();
	}
	if (json['img1v1'] != null) {
		data.img1v1 = json['img1v1'] is String
				? int.tryParse(json['img1v1'])
				: json['img1v1'].toInt();
	}
	if (json['trans'] != null) {
		data.trans = json['trans'];
	}
	return data;
}

Map<String, dynamic> searchResultSongsAlbumArtistToJson(SearchResultSongsAlbumArtist entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	data['alias'] = entity.alias;
	data['albumSize'] = entity.albumSize;
	data['picId'] = entity.picId;
	data['img1v1Url'] = entity.img1v1Url;
	data['img1v1'] = entity.img1v1;
	data['trans'] = entity.trans;
	return data;
}
