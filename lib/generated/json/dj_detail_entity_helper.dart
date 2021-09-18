import 'package:music/models/automation/dj_detail_entity.dart';

djDetailEntityFromJson(DjDetailEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['msg'] != null) {
		data.msg = json['msg'];
	}
	if (json['data'] != null) {
		data.data = DjDetailData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> djDetailEntityToJson(DjDetailEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['data'] = entity.data?.toJson();
	return data;
}

djDetailDataFromJson(DjDetailData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['dj'] != null) {
		data.dj = DjDetailDataDj().fromJson(json['dj']);
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['desc'] != null) {
		data.desc = json['desc'].toString();
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
	if (json['likedCount'] != null) {
		data.likedCount = json['likedCount'] is String
				? int.tryParse(json['likedCount'])
				: json['likedCount'].toInt();
	}
	if (json['programCount'] != null) {
		data.programCount = json['programCount'] is String
				? int.tryParse(json['programCount'])
				: json['programCount'].toInt();
	}
	if (json['commentCount'] != null) {
		data.commentCount = json['commentCount'] is String
				? int.tryParse(json['commentCount'])
				: json['commentCount'].toInt();
	}
	if (json['createTime'] != null) {
		data.createTime = json['createTime'] is String
				? int.tryParse(json['createTime'])
				: json['createTime'].toInt();
	}
	if (json['categoryId'] != null) {
		data.categoryId = json['categoryId'] is String
				? int.tryParse(json['categoryId'])
				: json['categoryId'].toInt();
	}
	if (json['category'] != null) {
		data.category = json['category'].toString();
	}
	if (json['secondCategoryId'] != null) {
		data.secondCategoryId = json['secondCategoryId'] is String
				? int.tryParse(json['secondCategoryId'])
				: json['secondCategoryId'].toInt();
	}
	if (json['secondCategory'] != null) {
		data.secondCategory = json['secondCategory'].toString();
	}
	if (json['radioFeeType'] != null) {
		data.radioFeeType = json['radioFeeType'] is String
				? int.tryParse(json['radioFeeType'])
				: json['radioFeeType'].toInt();
	}
	if (json['feeScope'] != null) {
		data.feeScope = json['feeScope'] is String
				? int.tryParse(json['feeScope'])
				: json['feeScope'].toInt();
	}
	if (json['lastProgramCreateTime'] != null) {
		data.lastProgramCreateTime = json['lastProgramCreateTime'] is String
				? int.tryParse(json['lastProgramCreateTime'])
				: json['lastProgramCreateTime'].toInt();
	}
	if (json['lastProgramId'] != null) {
		data.lastProgramId = json['lastProgramId'] is String
				? int.tryParse(json['lastProgramId'])
				: json['lastProgramId'].toInt();
	}
	if (json['rcmdText'] != null) {
		data.rcmdText = json['rcmdText'].toString();
	}
	if (json['subed'] != null) {
		data.subed = json['subed'];
	}
	if (json['commentDatas'] != null) {
		data.commentDatas = (json['commentDatas'] as List).map((v) => DjDetailDataCommentDatas().fromJson(v)).toList();
	}
	if (json['feeInfo'] != null) {
		data.feeInfo = json['feeInfo'];
	}
	if (json['unlockInfo'] != null) {
		data.unlockInfo = json['unlockInfo'];
	}
	if (json['original'] != null) {
		data.original = json['original'];
	}
	if (json['playCount'] != null) {
		data.playCount = json['playCount'] is String
				? int.tryParse(json['playCount'])
				: json['playCount'].toInt();
	}
	if (json['privacy'] != null) {
		data.privacy = json['privacy'];
	}
	if (json['disableShare'] != null) {
		data.disableShare = json['disableShare'];
	}
	if (json['icon'] != null) {
		data.icon = json['icon'];
	}
	if (json['toplistInfo'] != null) {
		data.toplistInfo = json['toplistInfo'];
	}
	return data;
}

Map<String, dynamic> djDetailDataToJson(DjDetailData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['dj'] = entity.dj?.toJson();
	data['picId'] = entity.picId;
	data['picUrl'] = entity.picUrl;
	data['desc'] = entity.desc;
	data['subCount'] = entity.subCount;
	data['shareCount'] = entity.shareCount;
	data['likedCount'] = entity.likedCount;
	data['programCount'] = entity.programCount;
	data['commentCount'] = entity.commentCount;
	data['createTime'] = entity.createTime;
	data['categoryId'] = entity.categoryId;
	data['category'] = entity.category;
	data['secondCategoryId'] = entity.secondCategoryId;
	data['secondCategory'] = entity.secondCategory;
	data['radioFeeType'] = entity.radioFeeType;
	data['feeScope'] = entity.feeScope;
	data['lastProgramCreateTime'] = entity.lastProgramCreateTime;
	data['lastProgramId'] = entity.lastProgramId;
	data['rcmdText'] = entity.rcmdText;
	data['subed'] = entity.subed;
	data['commentDatas'] =  entity.commentDatas?.map((v) => v.toJson())?.toList();
	data['feeInfo'] = entity.feeInfo;
	data['unlockInfo'] = entity.unlockInfo;
	data['original'] = entity.original;
	data['playCount'] = entity.playCount;
	data['privacy'] = entity.privacy;
	data['disableShare'] = entity.disableShare;
	data['icon'] = entity.icon;
	data['toplistInfo'] = entity.toplistInfo;
	return data;
}

djDetailDataDjFromJson(DjDetailDataDj data, Map<String, dynamic> json) {
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
	if (json['rewardCount'] != null) {
		data.rewardCount = json['rewardCount'] is String
				? int.tryParse(json['rewardCount'])
				: json['rewardCount'].toInt();
	}
	if (json['canReward'] != null) {
		data.canReward = json['canReward'];
	}
	return data;
}

Map<String, dynamic> djDetailDataDjToJson(DjDetailDataDj entity) {
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
	data['rewardCount'] = entity.rewardCount;
	data['canReward'] = entity.canReward;
	return data;
}

djDetailDataCommentDatasFromJson(DjDetailDataCommentDatas data, Map<String, dynamic> json) {
	if (json['userProfile'] != null) {
		data.userProfile = DjDetailDataCommentDatasUserProfile().fromJson(json['userProfile']);
	}
	if (json['content'] != null) {
		data.content = json['content'].toString();
	}
	if (json['programName'] != null) {
		data.programName = json['programName'].toString();
	}
	if (json['programId'] != null) {
		data.programId = json['programId'] is String
				? int.tryParse(json['programId'])
				: json['programId'].toInt();
	}
	if (json['commentId'] != null) {
		data.commentId = json['commentId'] is String
				? int.tryParse(json['commentId'])
				: json['commentId'].toInt();
	}
	return data;
}

Map<String, dynamic> djDetailDataCommentDatasToJson(DjDetailDataCommentDatas entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['userProfile'] = entity.userProfile?.toJson();
	data['content'] = entity.content;
	data['programName'] = entity.programName;
	data['programId'] = entity.programId;
	data['commentId'] = entity.commentId;
	return data;
}

djDetailDataCommentDatasUserProfileFromJson(DjDetailDataCommentDatasUserProfile data, Map<String, dynamic> json) {
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

Map<String, dynamic> djDetailDataCommentDatasUserProfileToJson(DjDetailDataCommentDatasUserProfile entity) {
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
