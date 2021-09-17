import 'package:music/models/automation/dj_hot_entity.dart';

djHotEntityFromJson(DjHotEntity data, Map<String, dynamic> json) {
	if (json['djRadios'] != null) {
		data.djRadios = (json['djRadios'] as List).map((v) => DjHotDjRadios().fromJson(v)).toList();
	}
	if (json['hasMore'] != null) {
		data.hasMore = json['hasMore'];
	}
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	return data;
}

Map<String, dynamic> djHotEntityToJson(DjHotEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['djRadios'] =  entity.djRadios?.map((v) => v.toJson())?.toList();
	data['hasMore'] = entity.hasMore;
	data['code'] = entity.code;
	return data;
}

djHotDjRadiosFromJson(DjHotDjRadios data, Map<String, dynamic> json) {
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
	if (json['programCount'] != null) {
		data.programCount = json['programCount'] is String
				? int.tryParse(json['programCount'])
				: json['programCount'].toInt();
	}
	if (json['subCount'] != null) {
		data.subCount = json['subCount'] is String
				? int.tryParse(json['subCount'])
				: json['subCount'].toInt();
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
	if (json['rcmdtext'] != null) {
		data.rcmdtext = json['rcmdtext'].toString();
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
	if (json['playCount'] != null) {
		data.playCount = json['playCount'] is String
				? int.tryParse(json['playCount'])
				: json['playCount'].toInt();
	}
	if (json['dj'] != null) {
		data.dj = DjHotDjRadiosDj().fromJson(json['dj']);
	}
	if (json['copywriter'] != null) {
		data.copywriter = json['copywriter'].toString();
	}
	return data;
}

Map<String, dynamic> djHotDjRadiosToJson(DjHotDjRadios entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	data['programCount'] = entity.programCount;
	data['subCount'] = entity.subCount;
	data['createTime'] = entity.createTime;
	data['categoryId'] = entity.categoryId;
	data['category'] = entity.category;
	data['rcmdtext'] = entity.rcmdtext;
	data['radioFeeType'] = entity.radioFeeType;
	data['feeScope'] = entity.feeScope;
	data['playCount'] = entity.playCount;
	data['dj'] = entity.dj?.toJson();
	data['copywriter'] = entity.copywriter;
	return data;
}

djHotDjRadiosDjFromJson(DjHotDjRadiosDj data, Map<String, dynamic> json) {
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
	if (json['backgroundImgIdStr'] != null) {
		data.backgroundImgIdStr = json['backgroundImgIdStr'].toString();
	}
	if (json['avatarImgIdStr'] != null) {
		data.avatarImgIdStr = json['avatarImgIdStr'].toString();
	}
	if (json['anchor'] != null) {
		data.anchor = json['anchor'];
	}
	if (json['avatarImgId_str'] != null) {
		data.avatarimgidStr = json['avatarImgId_str'].toString();
	}
	return data;
}

Map<String, dynamic> djHotDjRadiosDjToJson(DjHotDjRadiosDj entity) {
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
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['anchor'] = entity.anchor;
	data['avatarImgId_str'] = entity.avatarimgidStr;
	return data;
}
