import 'package:music/models/automation/fine_list_response_entity.dart';

fineListResponseEntityFromJson(FineListResponseEntity data, Map<String, dynamic> json) {
	if (json['playlists'] != null) {
		data.playlists = (json['playlists'] as List).map((v) => FineListResponsePlaylists().fromJson(v)).toList();
	}
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['more'] != null) {
		data.more = json['more'];
	}
	if (json['lasttime'] != null) {
		data.lasttime = json['lasttime'] is String
				? int.tryParse(json['lasttime'])
				: json['lasttime'].toInt();
	}
	if (json['total'] != null) {
		data.total = json['total'] is String
				? int.tryParse(json['total'])
				: json['total'].toInt();
	}
	return data;
}

Map<String, dynamic> fineListResponseEntityToJson(FineListResponseEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['playlists'] =  entity.playlists?.map((v) => v.toJson())?.toList();
	data['code'] = entity.code;
	data['more'] = entity.more;
	data['lasttime'] = entity.lasttime;
	data['total'] = entity.total;
	return data;
}

fineListResponsePlaylistsFromJson(FineListResponsePlaylists data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['trackNumberUpdateTime'] != null) {
		data.trackNumberUpdateTime = json['trackNumberUpdateTime'] is String
				? int.tryParse(json['trackNumberUpdateTime'])
				: json['trackNumberUpdateTime'].toInt();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
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
	if (json['updateTime'] != null) {
		data.updateTime = json['updateTime'] is String
				? int.tryParse(json['updateTime'])
				: json['updateTime'].toInt();
	}
	if (json['subscribedCount'] != null) {
		data.subscribedCount = json['subscribedCount'] is String
				? int.tryParse(json['subscribedCount'])
				: json['subscribedCount'].toInt();
	}
	if (json['trackCount'] != null) {
		data.trackCount = json['trackCount'] is String
				? int.tryParse(json['trackCount'])
				: json['trackCount'].toInt();
	}
	if (json['cloudTrackCount'] != null) {
		data.cloudTrackCount = json['cloudTrackCount'] is String
				? int.tryParse(json['cloudTrackCount'])
				: json['cloudTrackCount'].toInt();
	}
	if (json['coverImgUrl'] != null) {
		data.coverImgUrl = json['coverImgUrl'].toString();
	}
	if (json['coverImgId'] != null) {
		data.coverImgId = json['coverImgId'] is String
				? int.tryParse(json['coverImgId'])
				: json['coverImgId'].toInt();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['tags'] != null) {
		data.tags = (json['tags'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['playCount'] != null) {
		data.playCount = json['playCount'] is String
				? int.tryParse(json['playCount'])
				: json['playCount'].toInt();
	}
	if (json['trackUpdateTime'] != null) {
		data.trackUpdateTime = json['trackUpdateTime'] is String
				? int.tryParse(json['trackUpdateTime'])
				: json['trackUpdateTime'].toInt();
	}
	if (json['specialType'] != null) {
		data.specialType = json['specialType'] is String
				? int.tryParse(json['specialType'])
				: json['specialType'].toInt();
	}
	if (json['totalDuration'] != null) {
		data.totalDuration = json['totalDuration'] is String
				? int.tryParse(json['totalDuration'])
				: json['totalDuration'].toInt();
	}
	if (json['creator'] != null) {
		data.creator = FineListResponsePlaylistsCreator().fromJson(json['creator']);
	}
	if (json['tracks'] != null) {
		data.tracks = json['tracks'];
	}
	if (json['subscribers'] != null) {
		data.subscribers = (json['subscribers'] as List).map((v) => FineListResponsePlaylistsSubscribers().fromJson(v)).toList();
	}
	if (json['subscribed'] != null) {
		data.subscribed = json['subscribed'];
	}
	if (json['commentThreadId'] != null) {
		data.commentThreadId = json['commentThreadId'].toString();
	}
	if (json['newImported'] != null) {
		data.newImported = json['newImported'];
	}
	if (json['adType'] != null) {
		data.adType = json['adType'] is String
				? int.tryParse(json['adType'])
				: json['adType'].toInt();
	}
	if (json['highQuality'] != null) {
		data.highQuality = json['highQuality'];
	}
	if (json['privacy'] != null) {
		data.privacy = json['privacy'] is String
				? int.tryParse(json['privacy'])
				: json['privacy'].toInt();
	}
	if (json['ordered'] != null) {
		data.ordered = json['ordered'];
	}
	if (json['anonimous'] != null) {
		data.anonimous = json['anonimous'];
	}
	if (json['coverStatus'] != null) {
		data.coverStatus = json['coverStatus'] is String
				? int.tryParse(json['coverStatus'])
				: json['coverStatus'].toInt();
	}
	if (json['recommendInfo'] != null) {
		data.recommendInfo = json['recommendInfo'];
	}
	if (json['shareCount'] != null) {
		data.shareCount = json['shareCount'] is String
				? int.tryParse(json['shareCount'])
				: json['shareCount'].toInt();
	}
	if (json['coverImgId_str'] != null) {
		data.coverimgidStr = json['coverImgId_str'].toString();
	}
	if (json['commentCount'] != null) {
		data.commentCount = json['commentCount'] is String
				? int.tryParse(json['commentCount'])
				: json['commentCount'].toInt();
	}
	if (json['copywriter'] != null) {
		data.copywriter = json['copywriter'].toString();
	}
	if (json['tag'] != null) {
		data.tag = json['tag'].toString();
	}
	return data;
}

Map<String, dynamic> fineListResponsePlaylistsToJson(FineListResponsePlaylists entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['trackNumberUpdateTime'] = entity.trackNumberUpdateTime;
	data['status'] = entity.status;
	data['userId'] = entity.userId;
	data['createTime'] = entity.createTime;
	data['updateTime'] = entity.updateTime;
	data['subscribedCount'] = entity.subscribedCount;
	data['trackCount'] = entity.trackCount;
	data['cloudTrackCount'] = entity.cloudTrackCount;
	data['coverImgUrl'] = entity.coverImgUrl;
	data['coverImgId'] = entity.coverImgId;
	data['description'] = entity.description;
	data['tags'] = entity.tags;
	data['playCount'] = entity.playCount;
	data['trackUpdateTime'] = entity.trackUpdateTime;
	data['specialType'] = entity.specialType;
	data['totalDuration'] = entity.totalDuration;
	data['creator'] = entity.creator?.toJson();
	data['tracks'] = entity.tracks;
	data['subscribers'] =  entity.subscribers?.map((v) => v.toJson())?.toList();
	data['subscribed'] = entity.subscribed;
	data['commentThreadId'] = entity.commentThreadId;
	data['newImported'] = entity.newImported;
	data['adType'] = entity.adType;
	data['highQuality'] = entity.highQuality;
	data['privacy'] = entity.privacy;
	data['ordered'] = entity.ordered;
	data['anonimous'] = entity.anonimous;
	data['coverStatus'] = entity.coverStatus;
	data['recommendInfo'] = entity.recommendInfo;
	data['shareCount'] = entity.shareCount;
	data['coverImgId_str'] = entity.coverimgidStr;
	data['commentCount'] = entity.commentCount;
	data['copywriter'] = entity.copywriter;
	data['tag'] = entity.tag;
	return data;
}

fineListResponsePlaylistsCreatorFromJson(FineListResponsePlaylistsCreator data, Map<String, dynamic> json) {
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
		data.expertTags = (json['expertTags'] as List).map((v) => v.toString()).toList().cast<String>();
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
		data.avatarDetail = FineListResponsePlaylistsCreatorAvatarDetail().fromJson(json['avatarDetail']);
	}
	if (json['anchor'] != null) {
		data.anchor = json['anchor'];
	}
	if (json['avatarImgIdStr'] != null) {
		data.avatarImgIdStr = json['avatarImgIdStr'].toString();
	}
	if (json['backgroundImgIdStr'] != null) {
		data.backgroundImgIdStr = json['backgroundImgIdStr'].toString();
	}
	if (json['avatarImgId_str'] != null) {
		data.avatarimgidStr = json['avatarImgId_str'].toString();
	}
	return data;
}

Map<String, dynamic> fineListResponsePlaylistsCreatorToJson(FineListResponsePlaylistsCreator entity) {
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
	data['anchor'] = entity.anchor;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['avatarImgId_str'] = entity.avatarimgidStr;
	return data;
}

fineListResponsePlaylistsCreatorAvatarDetailFromJson(FineListResponsePlaylistsCreatorAvatarDetail data, Map<String, dynamic> json) {
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

Map<String, dynamic> fineListResponsePlaylistsCreatorAvatarDetailToJson(FineListResponsePlaylistsCreatorAvatarDetail entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['userType'] = entity.userType;
	data['identityLevel'] = entity.identityLevel;
	data['identityIconUrl'] = entity.identityIconUrl;
	return data;
}

fineListResponsePlaylistsSubscribersFromJson(FineListResponsePlaylistsSubscribers data, Map<String, dynamic> json) {
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
	if (json['anchor'] != null) {
		data.anchor = json['anchor'];
	}
	if (json['avatarImgIdStr'] != null) {
		data.avatarImgIdStr = json['avatarImgIdStr'].toString();
	}
	if (json['backgroundImgIdStr'] != null) {
		data.backgroundImgIdStr = json['backgroundImgIdStr'].toString();
	}
	if (json['avatarImgId_str'] != null) {
		data.avatarimgidStr = json['avatarImgId_str'].toString();
	}
	return data;
}

Map<String, dynamic> fineListResponsePlaylistsSubscribersToJson(FineListResponsePlaylistsSubscribers entity) {
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
	data['anchor'] = entity.anchor;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['avatarImgId_str'] = entity.avatarimgidStr;
	return data;
}
