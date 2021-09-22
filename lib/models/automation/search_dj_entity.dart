import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/generated/json/base/json_field.dart';

class SearchDjEntity with JsonConvert<SearchDjEntity> {
	SearchDjResult? result;
	int? code;
}

class SearchDjResult with JsonConvert<SearchDjResult> {
	List<SearchDjResultDjRadios>? djRadios;
	int? djRadiosCount;
}

class SearchDjResultDjRadios with JsonConvert<SearchDjResultDjRadios> {
	int? id;
	SearchDjResultDjRadiosDj? dj;
	String? name;
	String? picUrl;
	String? desc;
	int? subCount;
	int? programCount;
	int? createTime;
	int? categoryId;
	String? category;
	int? radioFeeType;
	int? feeScope;
	bool? buyed;
	dynamic? videos;
	bool? finished;
	bool? underShelf;
	int? purchaseCount;
	int? price;
	int? originalPrice;
	dynamic? discountPrice;
	int? lastProgramCreateTime;
	dynamic? lastProgramName;
	int? lastProgramId;
	int? picId;
	String? rcmdText;
	bool? hightQuality;
	bool? whiteList;
	dynamic? liveInfo;
	int? playCount;
	dynamic? icon;
	bool? composeVideo;
	int? shareCount;
	int? likedCount;
	String? alg;
	int? commentCount;
}

class SearchDjResultDjRadiosDj with JsonConvert<SearchDjResultDjRadiosDj> {
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
