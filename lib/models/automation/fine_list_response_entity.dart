import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/generated/json/base/json_field.dart';

class FineListResponseEntity with JsonConvert<FineListResponseEntity> {
	List<FineListResponsePlaylists>? playlists;
	int? code;
	bool? more;
	int? lasttime;
	int? total;
}

class FineListResponsePlaylists with JsonConvert<FineListResponsePlaylists> {
	String? name;
	int? id;
	int? trackNumberUpdateTime;
	int? status;
	int? userId;
	int? createTime;
	int? updateTime;
	int? subscribedCount;
	int? trackCount;
	int? cloudTrackCount;
	String? coverImgUrl;
	int? coverImgId;
	String? description;
	List<String>? tags;
	int? playCount;
	int? trackUpdateTime;
	int? specialType;
	int? totalDuration;
	FineListResponsePlaylistsCreator? creator;
	dynamic? tracks;
	List<FineListResponsePlaylistsSubscribers>? subscribers;
	dynamic? subscribed;
	String? commentThreadId;
	bool? newImported;
	int? adType;
	bool? highQuality;
	int? privacy;
	bool? ordered;
	bool? anonimous;
	int? coverStatus;
	dynamic? recommendInfo;
	int? shareCount;
	@JSONField(name: "coverImgId_str")
	String? coverimgidStr;
	int? commentCount;
	String? copywriter;
	String? tag;
}

class FineListResponsePlaylistsCreator with JsonConvert<FineListResponsePlaylistsCreator> {
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
	List<String>? expertTags;
	dynamic? experts;
	int? djStatus;
	int? vipType;
	dynamic? remarkName;
	int? authenticationTypes;
	FineListResponsePlaylistsCreatorAvatarDetail? avatarDetail;
	bool? anchor;
	String? avatarImgIdStr;
	String? backgroundImgIdStr;
	@JSONField(name: "avatarImgId_str")
	String? avatarimgidStr;
}

class FineListResponsePlaylistsCreatorAvatarDetail with JsonConvert<FineListResponsePlaylistsCreatorAvatarDetail> {
	int? userType;
	int? identityLevel;
	String? identityIconUrl;
}

class FineListResponsePlaylistsSubscribers with JsonConvert<FineListResponsePlaylistsSubscribers> {
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
