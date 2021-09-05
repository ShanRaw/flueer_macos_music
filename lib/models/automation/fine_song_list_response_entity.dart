import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/generated/json/base/json_field.dart';

class FineSongListResponseEntity with JsonConvert<FineSongListResponseEntity> {
	List<FineSongListResponsePlaylists>? playlists;
	int? code;
	bool? more;
	int? lasttime;
	int? total;
}

class FineSongListResponsePlaylists with JsonConvert<FineSongListResponsePlaylists> {
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
	FineSongListResponsePlaylistsCreator? creator;
	dynamic? tracks;
	List<FineSongListResponsePlaylistsSubscribers>? subscribers;
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

class FineSongListResponsePlaylistsCreator with JsonConvert<FineSongListResponsePlaylistsCreator> {
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
	FineSongListResponsePlaylistsCreatorAvatarDetail? avatarDetail;
	String? avatarImgIdStr;
	String? backgroundImgIdStr;
	bool? anchor;
	@JSONField(name: "avatarImgId_str")
	String? avatarimgidStr;
}

class FineSongListResponsePlaylistsCreatorAvatarDetail with JsonConvert<FineSongListResponsePlaylistsCreatorAvatarDetail> {
	int? userType;
	int? identityLevel;
	String? identityIconUrl;
}

class FineSongListResponsePlaylistsSubscribers with JsonConvert<FineSongListResponsePlaylistsSubscribers> {
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
	String? avatarImgIdStr;
	String? backgroundImgIdStr;
	bool? anchor;
}
