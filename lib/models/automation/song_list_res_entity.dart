import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/generated/json/base/json_field.dart';

class SongListResEntity with JsonConvert<SongListResEntity> {
	List<SongListResPlaylists>? playlists;
	int? total;
	int? code;
	bool? more;
	String? cat;
}

class SongListResPlaylists with JsonConvert<SongListResPlaylists> {
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
	SongListResPlaylistsCreator? creator;
	dynamic? tracks;
	List<SongListResPlaylistsSubscribers>? subscribers;
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
	String? alg;
	int? commentCount;
}

class SongListResPlaylistsCreator with JsonConvert<SongListResPlaylistsCreator> {
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
	SongListResPlaylistsCreatorAvatarDetail? avatarDetail;
	bool? anchor;
	String? avatarImgIdStr;
	String? backgroundImgIdStr;
	@JSONField(name: "avatarImgId_str")
	String? avatarimgidStr;
}

class SongListResPlaylistsCreatorAvatarDetail with JsonConvert<SongListResPlaylistsCreatorAvatarDetail> {
	int? userType;
	int? identityLevel;
	String? identityIconUrl;
}

class SongListResPlaylistsSubscribers with JsonConvert<SongListResPlaylistsSubscribers> {
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
