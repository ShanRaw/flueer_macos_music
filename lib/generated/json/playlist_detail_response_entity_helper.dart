import 'package:music/models/automation/playlist_detail_response_entity.dart';

playlistDetailResponseEntityFromJson(PlaylistDetailResponseEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['relatedVideos'] != null) {
		data.relatedVideos = json['relatedVideos'];
	}
	if (json['playlist'] != null) {
		data.playlist = PlaylistDetailResponsePlaylist().fromJson(json['playlist']);
	}
	if (json['urls'] != null) {
		data.urls = json['urls'];
	}
	if (json['privileges'] != null) {
		data.privileges = (json['privileges'] as List).map((v) => PlaylistDetailResponsePrivileges().fromJson(v)).toList();
	}
	if (json['sharedPrivilege'] != null) {
		data.sharedPrivilege = json['sharedPrivilege'];
	}
	return data;
}

Map<String, dynamic> playlistDetailResponseEntityToJson(PlaylistDetailResponseEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['relatedVideos'] = entity.relatedVideos;
	data['playlist'] = entity.playlist?.toJson();
	data['urls'] = entity.urls;
	data['privileges'] =  entity.privileges?.map((v) => v.toJson())?.toList();
	data['sharedPrivilege'] = entity.sharedPrivilege;
	return data;
}

playlistDetailResponsePlaylistFromJson(PlaylistDetailResponsePlaylist data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['coverImgId'] != null) {
		data.coverImgId = json['coverImgId'] is String
				? int.tryParse(json['coverImgId'])
				: json['coverImgId'].toInt();
	}
	if (json['coverImgUrl'] != null) {
		data.coverImgUrl = json['coverImgUrl'].toString();
	}
	if (json['coverImgId_str'] != null) {
		data.coverimgidStr = json['coverImgId_str'].toString();
	}
	if (json['adType'] != null) {
		data.adType = json['adType'] is String
				? int.tryParse(json['adType'])
				: json['adType'].toInt();
	}
	if (json['userId'] != null) {
		data.userId = json['userId'] is String
				? int.tryParse(json['userId'])
				: json['userId'].toInt();
	}
	if (json['createTime'] != null) {
		data.createTime = json['createTime'] is String
				? int.tryParse(json['createTime'])
				: json['createTime'].toInt();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['opRecommend'] != null) {
		data.opRecommend = json['opRecommend'];
	}
	if (json['highQuality'] != null) {
		data.highQuality = json['highQuality'];
	}
	if (json['newImported'] != null) {
		data.newImported = json['newImported'];
	}
	if (json['updateTime'] != null) {
		data.updateTime = json['updateTime'] is String
				? int.tryParse(json['updateTime'])
				: json['updateTime'].toInt();
	}
	if (json['trackCount'] != null) {
		data.trackCount = json['trackCount'] is String
				? int.tryParse(json['trackCount'])
				: json['trackCount'].toInt();
	}
	if (json['specialType'] != null) {
		data.specialType = json['specialType'] is String
				? int.tryParse(json['specialType'])
				: json['specialType'].toInt();
	}
	if (json['privacy'] != null) {
		data.privacy = json['privacy'] is String
				? int.tryParse(json['privacy'])
				: json['privacy'].toInt();
	}
	if (json['trackUpdateTime'] != null) {
		data.trackUpdateTime = json['trackUpdateTime'] is String
				? int.tryParse(json['trackUpdateTime'])
				: json['trackUpdateTime'].toInt();
	}
	if (json['commentThreadId'] != null) {
		data.commentThreadId = json['commentThreadId'].toString();
	}
	if (json['playCount'] != null) {
		data.playCount = json['playCount'] is String
				? int.tryParse(json['playCount'])
				: json['playCount'].toInt();
	}
	if (json['trackNumberUpdateTime'] != null) {
		data.trackNumberUpdateTime = json['trackNumberUpdateTime'] is String
				? int.tryParse(json['trackNumberUpdateTime'])
				: json['trackNumberUpdateTime'].toInt();
	}
	if (json['subscribedCount'] != null) {
		data.subscribedCount = json['subscribedCount'] is String
				? int.tryParse(json['subscribedCount'])
				: json['subscribedCount'].toInt();
	}
	if (json['cloudTrackCount'] != null) {
		data.cloudTrackCount = json['cloudTrackCount'] is String
				? int.tryParse(json['cloudTrackCount'])
				: json['cloudTrackCount'].toInt();
	}
	if (json['ordered'] != null) {
		data.ordered = json['ordered'];
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['tags'] != null) {
		data.tags = (json['tags'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['updateFrequency'] != null) {
		data.updateFrequency = json['updateFrequency'];
	}
	if (json['backgroundCoverId'] != null) {
		data.backgroundCoverId = json['backgroundCoverId'] is String
				? int.tryParse(json['backgroundCoverId'])
				: json['backgroundCoverId'].toInt();
	}
	if (json['backgroundCoverUrl'] != null) {
		data.backgroundCoverUrl = json['backgroundCoverUrl'];
	}
	if (json['titleImage'] != null) {
		data.titleImage = json['titleImage'] is String
				? int.tryParse(json['titleImage'])
				: json['titleImage'].toInt();
	}
	if (json['titleImageUrl'] != null) {
		data.titleImageUrl = json['titleImageUrl'];
	}
	if (json['englishTitle'] != null) {
		data.englishTitle = json['englishTitle'];
	}
	if (json['officialPlaylistType'] != null) {
		data.officialPlaylistType = json['officialPlaylistType'];
	}
	if (json['subscribers'] != null) {
		data.subscribers = (json['subscribers'] as List).map((v) => PlaylistDetailResponsePlaylistSubscribers().fromJson(v)).toList();
	}
	if (json['subscribed'] != null) {
		data.subscribed = json['subscribed'];
	}
	if (json['creator'] != null) {
		data.creator = PlaylistDetailResponsePlaylistCreator().fromJson(json['creator']);
	}
	if (json['tracks'] != null) {
		data.tracks = (json['tracks'] as List).map((v) => PlaylistDetailResponsePlaylistTracks().fromJson(v)).toList();
	}
	if (json['videoIds'] != null) {
		data.videoIds = json['videoIds'];
	}
	if (json['videos'] != null) {
		data.videos = json['videos'];
	}
	if (json['trackIds'] != null) {
		data.trackIds = (json['trackIds'] as List).map((v) => PlaylistDetailResponsePlaylistTrackIds().fromJson(v)).toList();
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
	if (json['remixVideo'] != null) {
		data.remixVideo = json['remixVideo'];
	}
	if (json['sharedUsers'] != null) {
		data.sharedUsers = json['sharedUsers'];
	}
	if (json['historySharedUsers'] != null) {
		data.historySharedUsers = json['historySharedUsers'];
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePlaylistToJson(PlaylistDetailResponsePlaylist entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['coverImgId'] = entity.coverImgId;
	data['coverImgUrl'] = entity.coverImgUrl;
	data['coverImgId_str'] = entity.coverimgidStr;
	data['adType'] = entity.adType;
	data['userId'] = entity.userId;
	data['createTime'] = entity.createTime;
	data['status'] = entity.status;
	data['opRecommend'] = entity.opRecommend;
	data['highQuality'] = entity.highQuality;
	data['newImported'] = entity.newImported;
	data['updateTime'] = entity.updateTime;
	data['trackCount'] = entity.trackCount;
	data['specialType'] = entity.specialType;
	data['privacy'] = entity.privacy;
	data['trackUpdateTime'] = entity.trackUpdateTime;
	data['commentThreadId'] = entity.commentThreadId;
	data['playCount'] = entity.playCount;
	data['trackNumberUpdateTime'] = entity.trackNumberUpdateTime;
	data['subscribedCount'] = entity.subscribedCount;
	data['cloudTrackCount'] = entity.cloudTrackCount;
	data['ordered'] = entity.ordered;
	data['description'] = entity.description;
	data['tags'] = entity.tags;
	data['updateFrequency'] = entity.updateFrequency;
	data['backgroundCoverId'] = entity.backgroundCoverId;
	data['backgroundCoverUrl'] = entity.backgroundCoverUrl;
	data['titleImage'] = entity.titleImage;
	data['titleImageUrl'] = entity.titleImageUrl;
	data['englishTitle'] = entity.englishTitle;
	data['officialPlaylistType'] = entity.officialPlaylistType;
	data['subscribers'] =  entity.subscribers?.map((v) => v.toJson())?.toList();
	data['subscribed'] = entity.subscribed;
	data['creator'] = entity.creator?.toJson();
	data['tracks'] =  entity.tracks?.map((v) => v.toJson())?.toList();
	data['videoIds'] = entity.videoIds;
	data['videos'] = entity.videos;
	data['trackIds'] =  entity.trackIds?.map((v) => v.toJson())?.toList();
	data['shareCount'] = entity.shareCount;
	data['commentCount'] = entity.commentCount;
	data['remixVideo'] = entity.remixVideo;
	data['sharedUsers'] = entity.sharedUsers;
	data['historySharedUsers'] = entity.historySharedUsers;
	return data;
}

playlistDetailResponsePlaylistSubscribersFromJson(PlaylistDetailResponsePlaylistSubscribers data, Map<String, dynamic> json) {
	if (json['defaultAvatar'] != null) {
		data.defaultAvatar = json['defaultAvatar'];
	}
	if (json['province'] != null) {
		data.province = json['province'] is String
				? int.tryParse(json['province'])
				: json['province'].toInt();
	}
	if (json['authStatus'] != null) {
		data.authStatus = json['authStatus'] is String
				? int.tryParse(json['authStatus'])
				: json['authStatus'].toInt();
	}
	if (json['followed'] != null) {
		data.followed = json['followed'];
	}
	if (json['avatarUrl'] != null) {
		data.avatarUrl = json['avatarUrl'].toString();
	}
	if (json['accountStatus'] != null) {
		data.accountStatus = json['accountStatus'] is String
				? int.tryParse(json['accountStatus'])
				: json['accountStatus'].toInt();
	}
	if (json['gender'] != null) {
		data.gender = json['gender'] is String
				? int.tryParse(json['gender'])
				: json['gender'].toInt();
	}
	if (json['city'] != null) {
		data.city = json['city'] is String
				? int.tryParse(json['city'])
				: json['city'].toInt();
	}
	if (json['birthday'] != null) {
		data.birthday = json['birthday'] is String
				? int.tryParse(json['birthday'])
				: json['birthday'].toInt();
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
	if (json['nickname'] != null) {
		data.nickname = json['nickname'].toString();
	}
	if (json['signature'] != null) {
		data.signature = json['signature'].toString();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['detailDescription'] != null) {
		data.detailDescription = json['detailDescription'].toString();
	}
	if (json['avatarImgId'] != null) {
		data.avatarImgId = json['avatarImgId'] is String
				? int.tryParse(json['avatarImgId'])
				: json['avatarImgId'].toInt();
	}
	if (json['backgroundImgId'] != null) {
		data.backgroundImgId = json['backgroundImgId'] is String
				? int.tryParse(json['backgroundImgId'])
				: json['backgroundImgId'].toInt();
	}
	if (json['backgroundUrl'] != null) {
		data.backgroundUrl = json['backgroundUrl'].toString();
	}
	if (json['authority'] != null) {
		data.authority = json['authority'] is String
				? int.tryParse(json['authority'])
				: json['authority'].toInt();
	}
	if (json['mutual'] != null) {
		data.mutual = json['mutual'];
	}
	if (json['expertTags'] != null) {
		data.expertTags = json['expertTags'];
	}
	if (json['experts'] != null) {
		data.experts = json['experts'];
	}
	if (json['djStatus'] != null) {
		data.djStatus = json['djStatus'] is String
				? int.tryParse(json['djStatus'])
				: json['djStatus'].toInt();
	}
	if (json['vipType'] != null) {
		data.vipType = json['vipType'] is String
				? int.tryParse(json['vipType'])
				: json['vipType'].toInt();
	}
	if (json['remarkName'] != null) {
		data.remarkName = json['remarkName'];
	}
	if (json['authenticationTypes'] != null) {
		data.authenticationTypes = json['authenticationTypes'] is String
				? int.tryParse(json['authenticationTypes'])
				: json['authenticationTypes'].toInt();
	}
	if (json['avatarDetail'] != null) {
		data.avatarDetail = json['avatarDetail'];
	}
	if (json['avatarImgIdStr'] != null) {
		data.avatarImgIdStr = json['avatarImgIdStr'].toString();
	}
	if (json['backgroundImgIdStr'] != null) {
		data.backgroundImgIdStr = json['backgroundImgIdStr'].toString();
	}
	if (json['anchor'] != null) {
		data.anchor = json['anchor'];
	}
	if (json['avatarImgId_str'] != null) {
		data.avatarimgidStr = json['avatarImgId_str'].toString();
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePlaylistSubscribersToJson(PlaylistDetailResponsePlaylistSubscribers entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['defaultAvatar'] = entity.defaultAvatar;
	data['province'] = entity.province;
	data['authStatus'] = entity.authStatus;
	data['followed'] = entity.followed;
	data['avatarUrl'] = entity.avatarUrl;
	data['accountStatus'] = entity.accountStatus;
	data['gender'] = entity.gender;
	data['city'] = entity.city;
	data['birthday'] = entity.birthday;
	data['userId'] = entity.userId;
	data['userType'] = entity.userType;
	data['nickname'] = entity.nickname;
	data['signature'] = entity.signature;
	data['description'] = entity.description;
	data['detailDescription'] = entity.detailDescription;
	data['avatarImgId'] = entity.avatarImgId;
	data['backgroundImgId'] = entity.backgroundImgId;
	data['backgroundUrl'] = entity.backgroundUrl;
	data['authority'] = entity.authority;
	data['mutual'] = entity.mutual;
	data['expertTags'] = entity.expertTags;
	data['experts'] = entity.experts;
	data['djStatus'] = entity.djStatus;
	data['vipType'] = entity.vipType;
	data['remarkName'] = entity.remarkName;
	data['authenticationTypes'] = entity.authenticationTypes;
	data['avatarDetail'] = entity.avatarDetail;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['anchor'] = entity.anchor;
	data['avatarImgId_str'] = entity.avatarimgidStr;
	return data;
}

playlistDetailResponsePlaylistCreatorFromJson(PlaylistDetailResponsePlaylistCreator data, Map<String, dynamic> json) {
	if (json['defaultAvatar'] != null) {
		data.defaultAvatar = json['defaultAvatar'];
	}
	if (json['province'] != null) {
		data.province = json['province'] is String
				? int.tryParse(json['province'])
				: json['province'].toInt();
	}
	if (json['authStatus'] != null) {
		data.authStatus = json['authStatus'] is String
				? int.tryParse(json['authStatus'])
				: json['authStatus'].toInt();
	}
	if (json['followed'] != null) {
		data.followed = json['followed'];
	}
	if (json['avatarUrl'] != null) {
		data.avatarUrl = json['avatarUrl'].toString();
	}
	if (json['accountStatus'] != null) {
		data.accountStatus = json['accountStatus'] is String
				? int.tryParse(json['accountStatus'])
				: json['accountStatus'].toInt();
	}
	if (json['gender'] != null) {
		data.gender = json['gender'] is String
				? int.tryParse(json['gender'])
				: json['gender'].toInt();
	}
	if (json['city'] != null) {
		data.city = json['city'] is String
				? int.tryParse(json['city'])
				: json['city'].toInt();
	}
	if (json['birthday'] != null) {
		data.birthday = json['birthday'] is String
				? int.tryParse(json['birthday'])
				: json['birthday'].toInt();
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
	if (json['nickname'] != null) {
		data.nickname = json['nickname'].toString();
	}
	if (json['signature'] != null) {
		data.signature = json['signature'].toString();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['detailDescription'] != null) {
		data.detailDescription = json['detailDescription'].toString();
	}
	if (json['avatarImgId'] != null) {
		data.avatarImgId = json['avatarImgId'] is String
				? int.tryParse(json['avatarImgId'])
				: json['avatarImgId'].toInt();
	}
	if (json['backgroundImgId'] != null) {
		data.backgroundImgId = json['backgroundImgId'] is String
				? int.tryParse(json['backgroundImgId'])
				: json['backgroundImgId'].toInt();
	}
	if (json['backgroundUrl'] != null) {
		data.backgroundUrl = json['backgroundUrl'].toString();
	}
	if (json['authority'] != null) {
		data.authority = json['authority'] is String
				? int.tryParse(json['authority'])
				: json['authority'].toInt();
	}
	if (json['mutual'] != null) {
		data.mutual = json['mutual'];
	}
	if (json['expertTags'] != null) {
		data.expertTags = json['expertTags'];
	}
	if (json['experts'] != null) {
		data.experts = json['experts'];
	}
	if (json['djStatus'] != null) {
		data.djStatus = json['djStatus'] is String
				? int.tryParse(json['djStatus'])
				: json['djStatus'].toInt();
	}
	if (json['vipType'] != null) {
		data.vipType = json['vipType'] is String
				? int.tryParse(json['vipType'])
				: json['vipType'].toInt();
	}
	if (json['remarkName'] != null) {
		data.remarkName = json['remarkName'];
	}
	if (json['authenticationTypes'] != null) {
		data.authenticationTypes = json['authenticationTypes'] is String
				? int.tryParse(json['authenticationTypes'])
				: json['authenticationTypes'].toInt();
	}
	if (json['avatarDetail'] != null) {
		data.avatarDetail = PlaylistDetailResponsePlaylistCreatorAvatarDetail().fromJson(json['avatarDetail']);
	}
	if (json['avatarImgIdStr'] != null) {
		data.avatarImgIdStr = json['avatarImgIdStr'].toString();
	}
	if (json['backgroundImgIdStr'] != null) {
		data.backgroundImgIdStr = json['backgroundImgIdStr'].toString();
	}
	if (json['anchor'] != null) {
		data.anchor = json['anchor'];
	}
	if (json['avatarImgId_str'] != null) {
		data.avatarimgidStr = json['avatarImgId_str'].toString();
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePlaylistCreatorToJson(PlaylistDetailResponsePlaylistCreator entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['defaultAvatar'] = entity.defaultAvatar;
	data['province'] = entity.province;
	data['authStatus'] = entity.authStatus;
	data['followed'] = entity.followed;
	data['avatarUrl'] = entity.avatarUrl;
	data['accountStatus'] = entity.accountStatus;
	data['gender'] = entity.gender;
	data['city'] = entity.city;
	data['birthday'] = entity.birthday;
	data['userId'] = entity.userId;
	data['userType'] = entity.userType;
	data['nickname'] = entity.nickname;
	data['signature'] = entity.signature;
	data['description'] = entity.description;
	data['detailDescription'] = entity.detailDescription;
	data['avatarImgId'] = entity.avatarImgId;
	data['backgroundImgId'] = entity.backgroundImgId;
	data['backgroundUrl'] = entity.backgroundUrl;
	data['authority'] = entity.authority;
	data['mutual'] = entity.mutual;
	data['expertTags'] = entity.expertTags;
	data['experts'] = entity.experts;
	data['djStatus'] = entity.djStatus;
	data['vipType'] = entity.vipType;
	data['remarkName'] = entity.remarkName;
	data['authenticationTypes'] = entity.authenticationTypes;
	data['avatarDetail'] = entity.avatarDetail?.toJson();
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['anchor'] = entity.anchor;
	data['avatarImgId_str'] = entity.avatarimgidStr;
	return data;
}

playlistDetailResponsePlaylistCreatorAvatarDetailFromJson(PlaylistDetailResponsePlaylistCreatorAvatarDetail data, Map<String, dynamic> json) {
	if (json['userType'] != null) {
		data.userType = json['userType'] is String
				? int.tryParse(json['userType'])
				: json['userType'].toInt();
	}
	if (json['identityLevel'] != null) {
		data.identityLevel = json['identityLevel'] is String
				? int.tryParse(json['identityLevel'])
				: json['identityLevel'].toInt();
	}
	if (json['identityIconUrl'] != null) {
		data.identityIconUrl = json['identityIconUrl'].toString();
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePlaylistCreatorAvatarDetailToJson(PlaylistDetailResponsePlaylistCreatorAvatarDetail entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['userType'] = entity.userType;
	data['identityLevel'] = entity.identityLevel;
	data['identityIconUrl'] = entity.identityIconUrl;
	return data;
}

playlistDetailResponsePlaylistTracksFromJson(PlaylistDetailResponsePlaylistTracks data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['pst'] != null) {
		data.pst = json['pst'] is String
				? int.tryParse(json['pst'])
				: json['pst'].toInt();
	}
	if (json['t'] != null) {
		data.t = json['t'] is String
				? int.tryParse(json['t'])
				: json['t'].toInt();
	}
	if (json['ar'] != null) {
		data.ar = (json['ar'] as List).map((v) => PlaylistDetailResponsePlaylistTracksAr().fromJson(v)).toList();
	}
	if (json['alia'] != null) {
		data.alia = (json['alia'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['pop'] != null) {
		data.pop = json['pop'] is String
				? int.tryParse(json['pop'])
				: json['pop'].toInt();
	}
	if (json['st'] != null) {
		data.st = json['st'] is String
				? int.tryParse(json['st'])
				: json['st'].toInt();
	}
	if (json['rt'] != null) {
		data.rt = json['rt'].toString();
	}
	if (json['fee'] != null) {
		data.fee = json['fee'] is String
				? int.tryParse(json['fee'])
				: json['fee'].toInt();
	}
	if (json['v'] != null) {
		data.v = json['v'] is String
				? int.tryParse(json['v'])
				: json['v'].toInt();
	}
	if (json['crbt'] != null) {
		data.crbt = json['crbt'];
	}
	if (json['cf'] != null) {
		data.cf = json['cf'].toString();
	}
	if (json['al'] != null) {
		data.al = PlaylistDetailResponsePlaylistTracksAl().fromJson(json['al']);
	}
	if (json['dt'] != null) {
		data.dt = json['dt'] is String
				? int.tryParse(json['dt'])
				: json['dt'].toInt();
	}
	if (json['h'] != null) {
		data.h = PlaylistDetailResponsePlaylistTracksH().fromJson(json['h']);
	}
	if (json['m'] != null) {
		data.m = PlaylistDetailResponsePlaylistTracksM().fromJson(json['m']);
	}
	if (json['l'] != null) {
		data.l = PlaylistDetailResponsePlaylistTracksL().fromJson(json['l']);
	}
	if (json['a'] != null) {
		data.a = json['a'];
	}
	if (json['cd'] != null) {
		data.cd = json['cd'].toString();
	}
	if (json['no'] != null) {
		data.no = json['no'] is String
				? int.tryParse(json['no'])
				: json['no'].toInt();
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
	if (json['djId'] != null) {
		data.djId = json['djId'] is String
				? int.tryParse(json['djId'])
				: json['djId'].toInt();
	}
	if (json['copyright'] != null) {
		data.copyright = json['copyright'] is String
				? int.tryParse(json['copyright'])
				: json['copyright'].toInt();
	}
	if (json['s_id'] != null) {
		data.sId = json['s_id'] is String
				? int.tryParse(json['s_id'])
				: json['s_id'].toInt();
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
	if (json['mst'] != null) {
		data.mst = json['mst'] is String
				? int.tryParse(json['mst'])
				: json['mst'].toInt();
	}
	if (json['cp'] != null) {
		data.cp = json['cp'] is String
				? int.tryParse(json['cp'])
				: json['cp'].toInt();
	}
	if (json['mv'] != null) {
		data.mv = json['mv'] is String
				? int.tryParse(json['mv'])
				: json['mv'].toInt();
	}
	if (json['publishTime'] != null) {
		data.publishTime = json['publishTime'] is String
				? int.tryParse(json['publishTime'])
				: json['publishTime'].toInt();
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePlaylistTracksToJson(PlaylistDetailResponsePlaylistTracks entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['pst'] = entity.pst;
	data['t'] = entity.t;
	data['ar'] =  entity.ar?.map((v) => v.toJson())?.toList();
	data['alia'] = entity.alia;
	data['pop'] = entity.pop;
	data['st'] = entity.st;
	data['rt'] = entity.rt;
	data['fee'] = entity.fee;
	data['v'] = entity.v;
	data['crbt'] = entity.crbt;
	data['cf'] = entity.cf;
	data['al'] = entity.al?.toJson();
	data['dt'] = entity.dt;
	data['h'] = entity.h?.toJson();
	data['m'] = entity.m?.toJson();
	data['l'] = entity.l?.toJson();
	data['a'] = entity.a;
	data['cd'] = entity.cd;
	data['no'] = entity.no;
	data['rtUrl'] = entity.rtUrl;
	data['ftype'] = entity.ftype;
	data['rtUrls'] = entity.rtUrls;
	data['djId'] = entity.djId;
	data['copyright'] = entity.copyright;
	data['s_id'] = entity.sId;
	data['mark'] = entity.mark;
	data['originCoverType'] = entity.originCoverType;
	data['originSongSimpleData'] = entity.originSongSimpleData;
	data['single'] = entity.single;
	data['noCopyrightRcmd'] = entity.noCopyrightRcmd;
	data['rtype'] = entity.rtype;
	data['rurl'] = entity.rurl;
	data['mst'] = entity.mst;
	data['cp'] = entity.cp;
	data['mv'] = entity.mv;
	data['publishTime'] = entity.publishTime;
	return data;
}

playlistDetailResponsePlaylistTracksArFromJson(PlaylistDetailResponsePlaylistTracksAr data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['tns'] != null) {
		data.tns = (json['tns'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePlaylistTracksArToJson(PlaylistDetailResponsePlaylistTracksAr entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['tns'] = entity.tns;
	data['alias'] = entity.alias;
	return data;
}

playlistDetailResponsePlaylistTracksAlFromJson(PlaylistDetailResponsePlaylistTracksAl data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['tns'] != null) {
		data.tns = (json['tns'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['pic_str'] != null) {
		data.picStr = json['pic_str'].toString();
	}
	if (json['pic'] != null) {
		data.pic = json['pic'] is String
				? int.tryParse(json['pic'])
				: json['pic'].toInt();
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePlaylistTracksAlToJson(PlaylistDetailResponsePlaylistTracksAl entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	data['tns'] = entity.tns;
	data['pic_str'] = entity.picStr;
	data['pic'] = entity.pic;
	return data;
}

playlistDetailResponsePlaylistTracksHFromJson(PlaylistDetailResponsePlaylistTracksH data, Map<String, dynamic> json) {
	if (json['br'] != null) {
		data.br = json['br'] is String
				? int.tryParse(json['br'])
				: json['br'].toInt();
	}
	if (json['fid'] != null) {
		data.fid = json['fid'] is String
				? int.tryParse(json['fid'])
				: json['fid'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['vd'] != null) {
		data.vd = json['vd'] is String
				? int.tryParse(json['vd'])
				: json['vd'].toInt();
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePlaylistTracksHToJson(PlaylistDetailResponsePlaylistTracksH entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	return data;
}

playlistDetailResponsePlaylistTracksMFromJson(PlaylistDetailResponsePlaylistTracksM data, Map<String, dynamic> json) {
	if (json['br'] != null) {
		data.br = json['br'] is String
				? int.tryParse(json['br'])
				: json['br'].toInt();
	}
	if (json['fid'] != null) {
		data.fid = json['fid'] is String
				? int.tryParse(json['fid'])
				: json['fid'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['vd'] != null) {
		data.vd = json['vd'] is String
				? int.tryParse(json['vd'])
				: json['vd'].toInt();
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePlaylistTracksMToJson(PlaylistDetailResponsePlaylistTracksM entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	return data;
}

playlistDetailResponsePlaylistTracksLFromJson(PlaylistDetailResponsePlaylistTracksL data, Map<String, dynamic> json) {
	if (json['br'] != null) {
		data.br = json['br'] is String
				? int.tryParse(json['br'])
				: json['br'].toInt();
	}
	if (json['fid'] != null) {
		data.fid = json['fid'] is String
				? int.tryParse(json['fid'])
				: json['fid'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['vd'] != null) {
		data.vd = json['vd'] is String
				? int.tryParse(json['vd'])
				: json['vd'].toInt();
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePlaylistTracksLToJson(PlaylistDetailResponsePlaylistTracksL entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['br'] = entity.br;
	data['fid'] = entity.fid;
	data['size'] = entity.size;
	data['vd'] = entity.vd;
	return data;
}

playlistDetailResponsePlaylistTrackIdsFromJson(PlaylistDetailResponsePlaylistTrackIds data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['v'] != null) {
		data.v = json['v'] is String
				? int.tryParse(json['v'])
				: json['v'].toInt();
	}
	if (json['t'] != null) {
		data.t = json['t'] is String
				? int.tryParse(json['t'])
				: json['t'].toInt();
	}
	if (json['at'] != null) {
		data.at = json['at'] is String
				? int.tryParse(json['at'])
				: json['at'].toInt();
	}
	if (json['alg'] != null) {
		data.alg = json['alg'];
	}
	if (json['uid'] != null) {
		data.uid = json['uid'] is String
				? int.tryParse(json['uid'])
				: json['uid'].toInt();
	}
	if (json['rcmdReason'] != null) {
		data.rcmdReason = json['rcmdReason'].toString();
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePlaylistTrackIdsToJson(PlaylistDetailResponsePlaylistTrackIds entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['v'] = entity.v;
	data['t'] = entity.t;
	data['at'] = entity.at;
	data['alg'] = entity.alg;
	data['uid'] = entity.uid;
	data['rcmdReason'] = entity.rcmdReason;
	return data;
}

playlistDetailResponsePrivilegesFromJson(PlaylistDetailResponsePrivileges data, Map<String, dynamic> json) {
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
	if (json['realPayed'] != null) {
		data.realPayed = json['realPayed'] is String
				? int.tryParse(json['realPayed'])
				: json['realPayed'].toInt();
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
	if (json['pc'] != null) {
		data.pc = json['pc'];
	}
	if (json['toast'] != null) {
		data.toast = json['toast'];
	}
	if (json['flag'] != null) {
		data.flag = json['flag'] is String
				? int.tryParse(json['flag'])
				: json['flag'].toInt();
	}
	if (json['paidBigBang'] != null) {
		data.paidBigBang = json['paidBigBang'];
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
		data.freeTrialPrivilege = PlaylistDetailResponsePrivilegesFreeTrialPrivilege().fromJson(json['freeTrialPrivilege']);
	}
	if (json['chargeInfoList'] != null) {
		data.chargeInfoList = (json['chargeInfoList'] as List).map((v) => PlaylistDetailResponsePrivilegesChargeInfoList().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePrivilegesToJson(PlaylistDetailResponsePrivileges entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['fee'] = entity.fee;
	data['payed'] = entity.payed;
	data['realPayed'] = entity.realPayed;
	data['st'] = entity.st;
	data['pl'] = entity.pl;
	data['dl'] = entity.dl;
	data['sp'] = entity.sp;
	data['cp'] = entity.cp;
	data['subp'] = entity.subp;
	data['cs'] = entity.cs;
	data['maxbr'] = entity.maxbr;
	data['fl'] = entity.fl;
	data['pc'] = entity.pc;
	data['toast'] = entity.toast;
	data['flag'] = entity.flag;
	data['paidBigBang'] = entity.paidBigBang;
	data['preSell'] = entity.preSell;
	data['playMaxbr'] = entity.playMaxbr;
	data['downloadMaxbr'] = entity.downloadMaxbr;
	data['rscl'] = entity.rscl;
	data['freeTrialPrivilege'] = entity.freeTrialPrivilege?.toJson();
	data['chargeInfoList'] =  entity.chargeInfoList?.map((v) => v.toJson())?.toList();
	return data;
}

playlistDetailResponsePrivilegesFreeTrialPrivilegeFromJson(PlaylistDetailResponsePrivilegesFreeTrialPrivilege data, Map<String, dynamic> json) {
	if (json['resConsumable'] != null) {
		data.resConsumable = json['resConsumable'];
	}
	if (json['userConsumable'] != null) {
		data.userConsumable = json['userConsumable'];
	}
	return data;
}

Map<String, dynamic> playlistDetailResponsePrivilegesFreeTrialPrivilegeToJson(PlaylistDetailResponsePrivilegesFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	return data;
}

playlistDetailResponsePrivilegesChargeInfoListFromJson(PlaylistDetailResponsePrivilegesChargeInfoList data, Map<String, dynamic> json) {
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

Map<String, dynamic> playlistDetailResponsePrivilegesChargeInfoListToJson(PlaylistDetailResponsePrivilegesChargeInfoList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['rate'] = entity.rate;
	data['chargeUrl'] = entity.chargeUrl;
	data['chargeMessage'] = entity.chargeMessage;
	data['chargeType'] = entity.chargeType;
	return data;
}
