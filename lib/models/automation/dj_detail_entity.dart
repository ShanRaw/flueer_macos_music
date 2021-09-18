import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/generated/json/base/json_field.dart';

class DjDetailEntity with JsonConvert<DjDetailEntity> {
	int? code;
	dynamic? msg;
	DjDetailData? data;
}

class DjDetailData with JsonConvert<DjDetailData> {
	int? id;
	String? name;
	DjDetailDataDj? dj;
	int? picId;
	String? picUrl;
	String? desc;
	int? subCount;
	int? shareCount;
	int? likedCount;
	int? programCount;
	int? commentCount;
	int? createTime;
	int? categoryId;
	String? category;
	int? secondCategoryId;
	String? secondCategory;
	int? radioFeeType;
	int? feeScope;
	int? lastProgramCreateTime;
	int? lastProgramId;
	String? rcmdText;
	bool? subed;
	List<DjDetailDataCommentDatas>? commentDatas;
	dynamic? feeInfo;
	dynamic? unlockInfo;
	bool? original;
	int? playCount;
	bool? privacy;
	bool? disableShare;
	dynamic? icon;
	dynamic? toplistInfo;
}

class DjDetailDataDj with JsonConvert<DjDetailDataDj> {
	bool? defaultAvatar;
	int? province;
	int? authStatus;
	bool? followed;
	String? avatarUrl;
	int? accountStatus;
	int? gender;
	int? city;
	int? birthday;
	int? userId;
	int? userType;
	String? nickname;
	String? signature;
	String? description;
	String? detailDescription;
	int? avatarImgId;
	int? backgroundImgId;
	String? backgroundUrl;
	int? authority;
	bool? mutual;
	dynamic? expertTags;
	dynamic? experts;
	int? djStatus;
	int? vipType;
	dynamic? remarkName;
	int? authenticationTypes;
	dynamic? avatarDetail;
	bool? anchor;
	String? avatarImgIdStr;
	String? backgroundImgIdStr;
	int? rewardCount;
	bool? canReward;
}

class DjDetailDataCommentDatas with JsonConvert<DjDetailDataCommentDatas> {
	DjDetailDataCommentDatasUserProfile? userProfile;
	String? content;
	String? programName;
	int? programId;
	int? commentId;
}

class DjDetailDataCommentDatasUserProfile with JsonConvert<DjDetailDataCommentDatasUserProfile> {
	bool? defaultAvatar;
	int? province;
	int? authStatus;
	bool? followed;
	String? avatarUrl;
	int? accountStatus;
	int? gender;
	int? city;
	int? birthday;
	int? userId;
	int? userType;
	String? nickname;
	String? signature;
	String? description;
	String? detailDescription;
	int? avatarImgId;
	int? backgroundImgId;
	String? backgroundUrl;
	int? authority;
	bool? mutual;
	dynamic? expertTags;
	dynamic? experts;
	int? djStatus;
	int? vipType;
	dynamic? remarkName;
	int? authenticationTypes;
	dynamic? avatarDetail;
	bool? anchor;
	String? avatarImgIdStr;
	String? backgroundImgIdStr;
	@JSONField(name: "avatarImgId_str")
	String? avatarimgidStr;
}
