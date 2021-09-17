import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/generated/json/base/json_field.dart';

class DjHotEntity with JsonConvert<DjHotEntity> {
	List<DjHotDjRadios>? djRadios;
	bool? hasMore;
	int? code;
}

class DjHotDjRadios with JsonConvert<DjHotDjRadios> {
	int? id;
	String? name;
	String? picUrl;
	int? programCount;
	int? subCount;
	int? createTime;
	int? categoryId;
	String? category;
	String? rcmdtext;
	int? radioFeeType;
	int? feeScope;
	int? playCount;
	DjHotDjRadiosDj? dj;
	String? copywriter;
}

class DjHotDjRadiosDj with JsonConvert<DjHotDjRadiosDj> {
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
	String? backgroundImgIdStr;
	String? avatarImgIdStr;
	bool? anchor;
	@JSONField(name: "avatarImgId_str")
	String? avatarimgidStr;
}
