import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/generated/json/base/json_field.dart';

class PersonalizedNewsongEntity with JsonConvert<PersonalizedNewsongEntity> {
	int? code;
	int? category;
	List<PersonalizedNewsongResult>? result;
}

class PersonalizedNewsongResult with JsonConvert<PersonalizedNewsongResult> {
	int? id;
	int? type;
	String? name;
	dynamic? copywriter;
	String? picUrl;
	bool? canDislike;
	dynamic? trackNumberUpdateTime;
	PersonalizedNewsongResultSong? song;
	String? alg;
}

class PersonalizedNewsongResultSong with JsonConvert<PersonalizedNewsongResultSong> {
	String? name;
	int? id;
	int? position;
	List<String>? alias;
	int? status;
	int? fee;
	int? copyrightId;
	String? disc;
	int? no;
	List<PersonalizedNewsongResultSongArtists>? artists;
	PersonalizedNewsongResultSongAlbum? album;
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
	int? originCoverType;
	dynamic? originSongSimpleData;
	int? single;
	dynamic? noCopyrightRcmd;
	int? rtype;
	dynamic? rurl;
	int? mvid;
	PersonalizedNewsongResultSongBMusic? bMusic;
	dynamic? mp3Url;
	PersonalizedNewsongResultSongHMusic? hMusic;
	PersonalizedNewsongResultSongMMusic? mMusic;
	PersonalizedNewsongResultSongLMusic? lMusic;
	bool? exclusive;
	PersonalizedNewsongResultSongPrivilege? privilege;
}

class PersonalizedNewsongResultSongArtists with JsonConvert<PersonalizedNewsongResultSongArtists> {
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

class PersonalizedNewsongResultSongAlbum with JsonConvert<PersonalizedNewsongResultSongAlbum> {
	String? name;
	int? id;
	String? type;
	int? size;
	int? picId;
	String? blurPicUrl;
	int? companyId;
	int? pic;
	String? picUrl;
	int? publishTime;
	String? description;
	String? tags;
	String? company;
	String? briefDesc;
	PersonalizedNewsongResultSongAlbumArtist? artist;
	List<dynamic>? songs;
	List<String>? alias;
	int? status;
	int? copyrightId;
	String? commentThreadId;
	List<PersonalizedNewsongResultSongAlbumArtists>? artists;
	String? subType;
	dynamic? transName;
	bool? onSale;
	int? mark;
	@JSONField(name: "picId_str")
	String? picidStr;
}

class PersonalizedNewsongResultSongAlbumArtist with JsonConvert<PersonalizedNewsongResultSongAlbumArtist> {
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

class PersonalizedNewsongResultSongAlbumArtists with JsonConvert<PersonalizedNewsongResultSongAlbumArtists> {
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

class PersonalizedNewsongResultSongBMusic with JsonConvert<PersonalizedNewsongResultSongBMusic> {
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

class PersonalizedNewsongResultSongHMusic with JsonConvert<PersonalizedNewsongResultSongHMusic> {
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

class PersonalizedNewsongResultSongMMusic with JsonConvert<PersonalizedNewsongResultSongMMusic> {
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

class PersonalizedNewsongResultSongLMusic with JsonConvert<PersonalizedNewsongResultSongLMusic> {
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

class PersonalizedNewsongResultSongPrivilege with JsonConvert<PersonalizedNewsongResultSongPrivilege> {
	int? id;
	int? fee;
	int? payed;
	int? st;
	int? pl;
	int? dl;
	int? sp;
	int? cp;
	int? subp;
	bool? cs;
	int? maxbr;
	int? fl;
	bool? toast;
	int? flag;
	bool? preSell;
	int? playMaxbr;
	int? downloadMaxbr;
	dynamic? rscl;
	PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
	List<PersonalizedNewsongResultSongPrivilegeChargeInfoList>? chargeInfoList;
}

class PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege with JsonConvert<PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege> {
	bool? resConsumable;
	bool? userConsumable;
}

class PersonalizedNewsongResultSongPrivilegeChargeInfoList with JsonConvert<PersonalizedNewsongResultSongPrivilegeChargeInfoList> {
	int? rate;
	dynamic? chargeUrl;
	dynamic? chargeMessage;
	int? chargeType;
}
