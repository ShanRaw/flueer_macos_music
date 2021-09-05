import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/generated/json/base/json_field.dart';

class PlaylistDetailResponseEntity with JsonConvert<PlaylistDetailResponseEntity> {
	int? code;
	dynamic? relatedVideos;
	PlaylistDetailResponsePlaylist? playlist;
	dynamic? urls;
	List<PlaylistDetailResponsePrivileges>? privileges;
	dynamic? sharedPrivilege;
}

class PlaylistDetailResponsePlaylist with JsonConvert<PlaylistDetailResponsePlaylist> {
	int? id;
	String? name;
	int? coverImgId;
	String? coverImgUrl;
	@JSONField(name: "coverImgId_str")
	String? coverimgidStr;
	int? adType;
	int? userId;
	int? createTime;
	int? status;
	bool? opRecommend;
	bool? highQuality;
	bool? newImported;
	int? updateTime;
	int? trackCount;
	int? specialType;
	int? privacy;
	int? trackUpdateTime;
	String? commentThreadId;
	int? playCount;
	int? trackNumberUpdateTime;
	int? subscribedCount;
	int? cloudTrackCount;
	bool? ordered;
	String? description;
	List<String>? tags;
	dynamic? updateFrequency;
	int? backgroundCoverId;
	dynamic? backgroundCoverUrl;
	int? titleImage;
	dynamic? titleImageUrl;
	dynamic? englishTitle;
	dynamic? officialPlaylistType;
	List<PlaylistDetailResponsePlaylistSubscribers>? subscribers;
	dynamic? subscribed;
	PlaylistDetailResponsePlaylistCreator? creator;
	List<PlaylistDetailResponsePlaylistTracks>? tracks;
	dynamic? videoIds;
	dynamic? videos;
	List<PlaylistDetailResponsePlaylistTrackIds>? trackIds;
	int? shareCount;
	int? commentCount;
	dynamic? remixVideo;
	dynamic? sharedUsers;
	dynamic? historySharedUsers;
}

class PlaylistDetailResponsePlaylistSubscribers with JsonConvert<PlaylistDetailResponsePlaylistSubscribers> {
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
	@JSONField(name: "avatarImgId_str")
	String? avatarimgidStr;
}

class PlaylistDetailResponsePlaylistCreator with JsonConvert<PlaylistDetailResponsePlaylistCreator> {
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
	PlaylistDetailResponsePlaylistCreatorAvatarDetail? avatarDetail;
	String? avatarImgIdStr;
	String? backgroundImgIdStr;
	bool? anchor;
	@JSONField(name: "avatarImgId_str")
	String? avatarimgidStr;
}

class PlaylistDetailResponsePlaylistCreatorAvatarDetail with JsonConvert<PlaylistDetailResponsePlaylistCreatorAvatarDetail> {
	int? userType;
	int? identityLevel;
	String? identityIconUrl;
}

class PlaylistDetailResponsePlaylistTracks with JsonConvert<PlaylistDetailResponsePlaylistTracks> {
	String? name;
	int? id;
	int? pst;
	int? t;
	List<PlaylistDetailResponsePlaylistTracksAr>? ar;
	List<dynamic>? alia;
	int? pop;
	int? st;
	String? rt;
	int? fee;
	int? v;
	dynamic? crbt;
	String? cf;
	PlaylistDetailResponsePlaylistTracksAl? al;
	int? dt;
	PlaylistDetailResponsePlaylistTracksH? h;
	PlaylistDetailResponsePlaylistTracksM? m;
	PlaylistDetailResponsePlaylistTracksL? l;
	dynamic? a;
	String? cd;
	int? no;
	dynamic? rtUrl;
	int? ftype;
	List<dynamic>? rtUrls;
	int? djId;
	int? copyright;
	@JSONField(name: "s_id")
	int? sId;
	int? mark;
	int? originCoverType;
	dynamic? originSongSimpleData;
	int? single;
	dynamic? noCopyrightRcmd;
	int? rtype;
	dynamic? rurl;
	int? mst;
	int? cp;
	int? mv;
	int? publishTime;
}

class PlaylistDetailResponsePlaylistTracksAr with JsonConvert<PlaylistDetailResponsePlaylistTracksAr> {
	int? id;
	String? name;
	List<dynamic>? tns;
	List<dynamic>? alias;
}

class PlaylistDetailResponsePlaylistTracksAl with JsonConvert<PlaylistDetailResponsePlaylistTracksAl> {
	int? id;
	String? name;
	String? picUrl;
	List<dynamic>? tns;
	@JSONField(name: "pic_str")
	String? picStr;
	int? pic;
}

class PlaylistDetailResponsePlaylistTracksH with JsonConvert<PlaylistDetailResponsePlaylistTracksH> {
	int? br;
	int? fid;
	int? size;
	int? vd;
}

class PlaylistDetailResponsePlaylistTracksM with JsonConvert<PlaylistDetailResponsePlaylistTracksM> {
	int? br;
	int? fid;
	int? size;
	int? vd;
}

class PlaylistDetailResponsePlaylistTracksL with JsonConvert<PlaylistDetailResponsePlaylistTracksL> {
	int? br;
	int? fid;
	int? size;
	int? vd;
}

class PlaylistDetailResponsePlaylistTrackIds with JsonConvert<PlaylistDetailResponsePlaylistTrackIds> {
	int? id;
	int? v;
	int? t;
	int? at;
	dynamic? alg;
	int? uid;
	String? rcmdReason;
}

class PlaylistDetailResponsePrivileges with JsonConvert<PlaylistDetailResponsePrivileges> {
	int? id;
	int? fee;
	int? payed;
	int? realPayed;
	int? st;
	int? pl;
	int? dl;
	int? sp;
	int? cp;
	int? subp;
	bool? cs;
	int? maxbr;
	int? fl;
	dynamic? pc;
	bool? toast;
	int? flag;
	bool? paidBigBang;
	bool? preSell;
	int? playMaxbr;
	int? downloadMaxbr;
	dynamic? rscl;
	PlaylistDetailResponsePrivilegesFreeTrialPrivilege? freeTrialPrivilege;
	List<PlaylistDetailResponsePrivilegesChargeInfoList>? chargeInfoList;
}

class PlaylistDetailResponsePrivilegesFreeTrialPrivilege with JsonConvert<PlaylistDetailResponsePrivilegesFreeTrialPrivilege> {
	bool? resConsumable;
	bool? userConsumable;
}

class PlaylistDetailResponsePrivilegesChargeInfoList with JsonConvert<PlaylistDetailResponsePrivilegesChargeInfoList> {
	int? rate;
	dynamic? chargeUrl;
	dynamic? chargeMessage;
	int? chargeType;
}
