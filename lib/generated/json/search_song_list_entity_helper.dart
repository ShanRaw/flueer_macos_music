import 'package:music/models/automation/search_song_list_entity.dart';

searchSongListEntityFromJson(SearchSongListEntity data, Map<String, dynamic> json) {
	if (json['result'] != null) {
		data.result = SearchSongListResult().fromJson(json['result']);
	}
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	return data;
}

Map<String, dynamic> searchSongListEntityToJson(SearchSongListEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['result'] = entity.result?.toJson();
	data['code'] = entity.code;
	return data;
}

searchSongListResultFromJson(SearchSongListResult data, Map<String, dynamic> json) {
	if (json['playlists'] != null) {
		data.playlists = (json['playlists'] as List).map((v) => SearchSongListResultPlaylists().fromJson(v)).toList();
	}
	if (json['hasMore'] != null) {
		data.hasMore = json['hasMore'];
	}
	if (json['playlistCount'] != null) {
		data.playlistCount = json['playlistCount'] is String
				? int.tryParse(json['playlistCount'])
				: json['playlistCount'].toInt();
	}
	return data;
}

Map<String, dynamic> searchSongListResultToJson(SearchSongListResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['playlists'] =  entity.playlists?.map((v) => v.toJson())?.toList();
	data['hasMore'] = entity.hasMore;
	data['playlistCount'] = entity.playlistCount;
	return data;
}

searchSongListResultPlaylistsFromJson(SearchSongListResultPlaylists data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['coverImgUrl'] != null) {
		data.coverImgUrl = json['coverImgUrl'].toString();
	}
	if (json['creator'] != null) {
		data.creator = SearchSongListResultPlaylistsCreator().fromJson(json['creator']);
	}
	if (json['subscribed'] != null) {
		data.subscribed = json['subscribed'];
	}
	if (json['trackCount'] != null) {
		data.trackCount = json['trackCount'] is String
				? int.tryParse(json['trackCount'])
				: json['trackCount'].toInt();
	}
	if (json['userId'] != null) {
		data.userId = json['userId'] is String
				? int.tryParse(json['userId'])
				: json['userId'].toInt();
	}
	if (json['playCount'] != null) {
		data.playCount = json['playCount'] is String
				? int.tryParse(json['playCount'])
				: json['playCount'].toInt();
	}
	if (json['bookCount'] != null) {
		data.bookCount = json['bookCount'] is String
				? int.tryParse(json['bookCount'])
				: json['bookCount'].toInt();
	}
	if (json['specialType'] != null) {
		data.specialType = json['specialType'] is String
				? int.tryParse(json['specialType'])
				: json['specialType'].toInt();
	}
	if (json['officialTags'] != null) {
		data.officialTags = json['officialTags'];
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['highQuality'] != null) {
		data.highQuality = json['highQuality'];
	}
	if (json['track'] != null) {
		data.track = SearchSongListResultPlaylistsTrack().fromJson(json['track']);
	}
	if (json['alg'] != null) {
		data.alg = json['alg'].toString();
	}
	return data;
}

Map<String, dynamic> searchSongListResultPlaylistsToJson(SearchSongListResultPlaylists entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['coverImgUrl'] = entity.coverImgUrl;
	data['creator'] = entity.creator?.toJson();
	data['subscribed'] = entity.subscribed;
	data['trackCount'] = entity.trackCount;
	data['userId'] = entity.userId;
	data['playCount'] = entity.playCount;
	data['bookCount'] = entity.bookCount;
	data['specialType'] = entity.specialType;
	data['officialTags'] = entity.officialTags;
	data['description'] = entity.description;
	data['highQuality'] = entity.highQuality;
	data['track'] = entity.track?.toJson();
	data['alg'] = entity.alg;
	return data;
}

searchSongListResultPlaylistsCreatorFromJson(SearchSongListResultPlaylistsCreator data, Map<String, dynamic> json) {
	if (json['nickname'] != null) {
		data.nickname = json['nickname'].toString();
	}
	if (json['userId'] != null) {
		data.userId = json['userId'] is String
				? int.tryParse(json['userId'])
				: json['userId'].toInt();
	}
	if (json['userType'] != null) {
		data.userType = json['userType'] is String
				? int.tryParse(json['userType'])
				: json['userType'].toInt();
	}
	if (json['avatarUrl'] != null) {
		data.avatarUrl = json['avatarUrl'].toString();
	}
	if (json['authStatus'] != null) {
		data.authStatus = json['authStatus'] is String
				? int.tryParse(json['authStatus'])
				: json['authStatus'].toInt();
	}
	if (json['expertTags'] != null) {
		data.expertTags = json['expertTags'];
	}
	if (json['experts'] != null) {
		data.experts = json['experts'];
	}
	return data;
}

Map<String, dynamic> searchSongListResultPlaylistsCreatorToJson(SearchSongListResultPlaylistsCreator entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['nickname'] = entity.nickname;
	data['userId'] = entity.userId;
	data['userType'] = entity.userType;
	data['avatarUrl'] = entity.avatarUrl;
	data['authStatus'] = entity.authStatus;
	data['expertTags'] = entity.expertTags;
	data['experts'] = entity.experts;
	return data;
}

searchSongListResultPlaylistsTrackFromJson(SearchSongListResultPlaylistsTrack data, Map<String, dynamic> json) {
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
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
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
		data.artists = (json['artists'] as List).map((v) => SearchSongListResultPlaylistsTrackArtists().fromJson(v)).toList();
	}
	if (json['album'] != null) {
		data.album = SearchSongListResultPlaylistsTrackAlbum().fromJson(json['album']);
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
		data.ringtone = json['ringtone'];
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
	if (json['hMusic'] != null) {
		data.hMusic = SearchSongListResultPlaylistsTrackHMusic().fromJson(json['hMusic']);
	}
	if (json['mMusic'] != null) {
		data.mMusic = SearchSongListResultPlaylistsTrackMMusic().fromJson(json['mMusic']);
	}
	if (json['lMusic'] != null) {
		data.lMusic = SearchSongListResultPlaylistsTrackLMusic().fromJson(json['lMusic']);
	}
	if (json['bMusic'] != null) {
		data.bMusic = SearchSongListResultPlaylistsTrackBMusic().fromJson(json['bMusic']);
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
	if (json['mp3Url'] != null) {
		data.mp3Url = json['mp3Url'];
	}
	return data;
}

Map<String, dynamic> searchSongListResultPlaylistsTrackToJson(SearchSongListResultPlaylistsTrack entity) {
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
	data['hMusic'] = entity.hMusic?.toJson();
	data['mMusic'] = entity.mMusic?.toJson();
	data['lMusic'] = entity.lMusic?.toJson();
	data['bMusic'] = entity.bMusic?.toJson();
	data['rtype'] = entity.rtype;
	data['rurl'] = entity.rurl;
	data['mvid'] = entity.mvid;
	data['mp3Url'] = entity.mp3Url;
	return data;
}

searchSongListResultPlaylistsTrackArtistsFromJson(SearchSongListResultPlaylistsTrackArtists data, Map<String, dynamic> json) {
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
	return data;
}

Map<String, dynamic> searchSongListResultPlaylistsTrackArtistsToJson(SearchSongListResultPlaylistsTrackArtists entity) {
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
	return data;
}

searchSongListResultPlaylistsTrackAlbumFromJson(SearchSongListResultPlaylistsTrackAlbum data, Map<String, dynamic> json) {
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
		data.company = json['company'];
	}
	if (json['briefDesc'] != null) {
		data.briefDesc = json['briefDesc'].toString();
	}
	if (json['artist'] != null) {
		data.artist = SearchSongListResultPlaylistsTrackAlbumArtist().fromJson(json['artist']);
	}
	if (json['songs'] != null) {
		data.songs = (json['songs'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
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
		data.artists = (json['artists'] as List).map((v) => SearchSongListResultPlaylistsTrackAlbumArtists().fromJson(v)).toList();
	}
	if (json['picId_str'] != null) {
		data.picidStr = json['picId_str'].toString();
	}
	return data;
}

Map<String, dynamic> searchSongListResultPlaylistsTrackAlbumToJson(SearchSongListResultPlaylistsTrackAlbum entity) {
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
	data['picId_str'] = entity.picidStr;
	return data;
}

searchSongListResultPlaylistsTrackAlbumArtistFromJson(SearchSongListResultPlaylistsTrackAlbumArtist data, Map<String, dynamic> json) {
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
	return data;
}

Map<String, dynamic> searchSongListResultPlaylistsTrackAlbumArtistToJson(SearchSongListResultPlaylistsTrackAlbumArtist entity) {
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
	return data;
}

searchSongListResultPlaylistsTrackAlbumArtistsFromJson(SearchSongListResultPlaylistsTrackAlbumArtists data, Map<String, dynamic> json) {
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
	return data;
}

Map<String, dynamic> searchSongListResultPlaylistsTrackAlbumArtistsToJson(SearchSongListResultPlaylistsTrackAlbumArtists entity) {
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
	return data;
}

searchSongListResultPlaylistsTrackHMusicFromJson(SearchSongListResultPlaylistsTrackHMusic data, Map<String, dynamic> json) {
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

Map<String, dynamic> searchSongListResultPlaylistsTrackHMusicToJson(SearchSongListResultPlaylistsTrackHMusic entity) {
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

searchSongListResultPlaylistsTrackMMusicFromJson(SearchSongListResultPlaylistsTrackMMusic data, Map<String, dynamic> json) {
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

Map<String, dynamic> searchSongListResultPlaylistsTrackMMusicToJson(SearchSongListResultPlaylistsTrackMMusic entity) {
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

searchSongListResultPlaylistsTrackLMusicFromJson(SearchSongListResultPlaylistsTrackLMusic data, Map<String, dynamic> json) {
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

Map<String, dynamic> searchSongListResultPlaylistsTrackLMusicToJson(SearchSongListResultPlaylistsTrackLMusic entity) {
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

searchSongListResultPlaylistsTrackBMusicFromJson(SearchSongListResultPlaylistsTrackBMusic data, Map<String, dynamic> json) {
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

Map<String, dynamic> searchSongListResultPlaylistsTrackBMusicToJson(SearchSongListResultPlaylistsTrackBMusic entity) {
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
