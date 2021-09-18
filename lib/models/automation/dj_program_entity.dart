import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/generated/json/base/json_field.dart';

class DjProgramEntity with JsonConvert<DjProgramEntity> {
	int? count;
	int? code;
	List<DjProgramPrograms>? programs;
	bool? more;
}

class DjProgramPrograms with JsonConvert<DjProgramPrograms> {
	DjProgramProgramsMainSong? mainSong;
	dynamic? songs;
	DjProgramProgramsDj? dj;
	String? blurCoverUrl;
	DjProgramProgramsRadio? radio;
	int? duration;
	bool? buyed;
	dynamic? programDesc;
	dynamic? h5Links;
	bool? canReward;
	int? auditStatus;
	dynamic? videoInfo;
	int? score;
	dynamic? liveInfo;
	dynamic? alg;
	dynamic? disPlayStatus;
	int? auditDisPlayStatus;
	dynamic? categoryName;
	dynamic? secondCategoryName;
	bool? isPublish;
	dynamic? titbitImages;
	int? smallLanguageAuditStatus;
	dynamic? titbits;
	int? mainTrackId;
	int? createTime;
	int? categoryId;
	String? coverUrl;
	int? scheduledPublishTime;
	int? secondCategoryId;
	int? createEventId;
	int? serialNum;
	List<String>? channels;
	int? listenerCount;
	int? feeScope;
	int? programFeeType;
	int? pubStatus;
	bool? reward;
	int? subscribedCount;
	int? bdAuditStatus;
	String? commentThreadId;
	bool? privacy;
	int? trackCount;
	String? description;
	String? name;
	int? id;
	int? shareCount;
	bool? subscribed;
	int? likedCount;
	int? commentCount;
}

class DjProgramProgramsMainSong with JsonConvert<DjProgramProgramsMainSong> {
	String? name;
	int? id;
	int? position;
	List<dynamic>? alias;
	int? status;
	int? fee;
	int? copyrightId;
	String? disc;
	int? no;
	List<DjProgramProgramsMainSongArtists>? artists;
	DjProgramProgramsMainSongAlbum? album;
	bool? starred;
	int? popularity;
	int? score;
	int? starredNum;
	int? duration;
	int? playedNum;
	int? dayPlays;
	int? hearTime;
	String? ringtone;
	dynamic? crbt;
	dynamic? audition;
	String? copyFrom;
	String? commentThreadId;
	dynamic? rtUrl;
	int? ftype;
	List<dynamic>? rtUrls;
	int? copyright;
	dynamic? transName;
	dynamic? sign;
	int? mark;
	dynamic? noCopyrightRcmd;
	DjProgramProgramsMainSongBMusic? bMusic;
	dynamic? mp3Url;
	int? rtype;
	dynamic? rurl;
	int? mvid;
	DjProgramProgramsMainSongHMusic? hMusic;
	dynamic? mMusic;
	DjProgramProgramsMainSongLMusic? lMusic;
}

class DjProgramProgramsMainSongArtists with JsonConvert<DjProgramProgramsMainSongArtists> {
	String? name;
	int? id;
	int? picId;
	int? img1v1Id;
	String? briefDesc;
	String? picUrl;
	String? img1v1Url;
	int? albumSize;
	List<dynamic>? alias;
	String? trans;
	int? musicSize;
	int? topicPerson;
}

class DjProgramProgramsMainSongAlbum with JsonConvert<DjProgramProgramsMainSongAlbum> {
	String? name;
	int? id;
	dynamic? type;
	int? size;
	int? picId;
	dynamic? blurPicUrl;
	int? companyId;
	int? pic;
	String? picUrl;
	int? publishTime;
	String? description;
	String? tags;
	dynamic? company;
	String? briefDesc;
	DjProgramProgramsMainSongAlbumArtist? artist;
	List<dynamic>? songs;
	List<dynamic>? alias;
	int? status;
	int? copyrightId;
	String? commentThreadId;
	List<DjProgramProgramsMainSongAlbumArtists>? artists;
	dynamic? subType;
	dynamic? transName;
	int? mark;
}

class DjProgramProgramsMainSongAlbumArtist with JsonConvert<DjProgramProgramsMainSongAlbumArtist> {
	String? name;
	int? id;
	int? picId;
	int? img1v1Id;
	String? briefDesc;
	String? picUrl;
	String? img1v1Url;
	int? albumSize;
	List<dynamic>? alias;
	String? trans;
	int? musicSize;
	int? topicPerson;
}

class DjProgramProgramsMainSongAlbumArtists with JsonConvert<DjProgramProgramsMainSongAlbumArtists> {
	String? name;
	int? id;
	int? picId;
	int? img1v1Id;
	String? briefDesc;
	String? picUrl;
	String? img1v1Url;
	int? albumSize;
	List<dynamic>? alias;
	String? trans;
	int? musicSize;
	int? topicPerson;
}

class DjProgramProgramsMainSongBMusic with JsonConvert<DjProgramProgramsMainSongBMusic> {
	dynamic? name;
	int? id;
	int? size;
	String? extension;
	int? sr;
	int? dfsId;
	int? bitrate;
	int? playTime;
	int? volumeDelta;
}

class DjProgramProgramsMainSongHMusic with JsonConvert<DjProgramProgramsMainSongHMusic> {
	dynamic? name;
	int? id;
	int? size;
	String? extension;
	int? sr;
	int? dfsId;
	int? bitrate;
	int? playTime;
	int? volumeDelta;
}

class DjProgramProgramsMainSongLMusic with JsonConvert<DjProgramProgramsMainSongLMusic> {
	dynamic? name;
	int? id;
	int? size;
	String? extension;
	int? sr;
	int? dfsId;
	int? bitrate;
	int? playTime;
	int? volumeDelta;
}

class DjProgramProgramsDj with JsonConvert<DjProgramProgramsDj> {
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
	String? brand;
}

class DjProgramProgramsRadio with JsonConvert<DjProgramProgramsRadio> {
	dynamic? dj;
	String? category;
	dynamic? secondCategory;
	bool? buyed;
	int? price;
	int? originalPrice;
	dynamic? discountPrice;
	int? purchaseCount;
	dynamic? lastProgramName;
	dynamic? videos;
	bool? finished;
	bool? underShelf;
	dynamic? liveInfo;
	int? playCount;
	bool? privacy;
	dynamic? icon;
	int? createTime;
	int? categoryId;
	int? programCount;
	int? picId;
	int? subCount;
	int? lastProgramCreateTime;
	int? radioFeeType;
	int? lastProgramId;
	int? feeScope;
	String? picUrl;
	String? desc;
	String? name;
	int? id;
}
