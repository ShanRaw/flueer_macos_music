import 'package:music/models/automation/dj_program_entity.dart';

djProgramEntityFromJson(DjProgramEntity data, Map<String, dynamic> json) {
	if (json['count'] != null) {
		data.count = json['count'] is String
				? int.tryParse(json['count'])
				: json['count'].toInt();
	}
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['programs'] != null) {
		data.programs = (json['programs'] as List).map((v) => DjProgramPrograms().fromJson(v)).toList();
	}
	if (json['more'] != null) {
		data.more = json['more'];
	}
	return data;
}

Map<String, dynamic> djProgramEntityToJson(DjProgramEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['count'] = entity.count;
	data['code'] = entity.code;
	data['programs'] =  entity.programs?.map((v) => v.toJson())?.toList();
	data['more'] = entity.more;
	return data;
}

djProgramProgramsFromJson(DjProgramPrograms data, Map<String, dynamic> json) {
	if (json['mainSong'] != null) {
		data.mainSong = DjProgramProgramsMainSong().fromJson(json['mainSong']);
	}
	if (json['songs'] != null) {
		data.songs = json['songs'];
	}
	if (json['dj'] != null) {
		data.dj = DjProgramProgramsDj().fromJson(json['dj']);
	}
	if (json['blurCoverUrl'] != null) {
		data.blurCoverUrl = json['blurCoverUrl'].toString();
	}
	if (json['radio'] != null) {
		data.radio = DjProgramProgramsRadio().fromJson(json['radio']);
	}
	if (json['duration'] != null) {
		data.duration = json['duration'] is String
				? int.tryParse(json['duration'])
				: json['duration'].toInt();
	}
	if (json['buyed'] != null) {
		data.buyed = json['buyed'];
	}
	if (json['programDesc'] != null) {
		data.programDesc = json['programDesc'];
	}
	if (json['h5Links'] != null) {
		data.h5Links = json['h5Links'];
	}
	if (json['canReward'] != null) {
		data.canReward = json['canReward'];
	}
	if (json['auditStatus'] != null) {
		data.auditStatus = json['auditStatus'] is String
				? int.tryParse(json['auditStatus'])
				: json['auditStatus'].toInt();
	}
	if (json['videoInfo'] != null) {
		data.videoInfo = json['videoInfo'];
	}
	if (json['score'] != null) {
		data.score = json['score'] is String
				? int.tryParse(json['score'])
				: json['score'].toInt();
	}
	if (json['liveInfo'] != null) {
		data.liveInfo = json['liveInfo'];
	}
	if (json['alg'] != null) {
		data.alg = json['alg'];
	}
	if (json['disPlayStatus'] != null) {
		data.disPlayStatus = json['disPlayStatus'];
	}
	if (json['auditDisPlayStatus'] != null) {
		data.auditDisPlayStatus = json['auditDisPlayStatus'] is String
				? int.tryParse(json['auditDisPlayStatus'])
				: json['auditDisPlayStatus'].toInt();
	}
	if (json['categoryName'] != null) {
		data.categoryName = json['categoryName'];
	}
	if (json['secondCategoryName'] != null) {
		data.secondCategoryName = json['secondCategoryName'];
	}
	if (json['isPublish'] != null) {
		data.isPublish = json['isPublish'];
	}
	if (json['titbitImages'] != null) {
		data.titbitImages = json['titbitImages'];
	}
	if (json['smallLanguageAuditStatus'] != null) {
		data.smallLanguageAuditStatus = json['smallLanguageAuditStatus'] is String
				? int.tryParse(json['smallLanguageAuditStatus'])
				: json['smallLanguageAuditStatus'].toInt();
	}
	if (json['titbits'] != null) {
		data.titbits = json['titbits'];
	}
	if (json['mainTrackId'] != null) {
		data.mainTrackId = json['mainTrackId'] is String
				? int.tryParse(json['mainTrackId'])
				: json['mainTrackId'].toInt();
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
	if (json['coverUrl'] != null) {
		data.coverUrl = json['coverUrl'].toString();
	}
	if (json['scheduledPublishTime'] != null) {
		data.scheduledPublishTime = json['scheduledPublishTime'] is String
				? int.tryParse(json['scheduledPublishTime'])
				: json['scheduledPublishTime'].toInt();
	}
	if (json['secondCategoryId'] != null) {
		data.secondCategoryId = json['secondCategoryId'] is String
				? int.tryParse(json['secondCategoryId'])
				: json['secondCategoryId'].toInt();
	}
	if (json['createEventId'] != null) {
		data.createEventId = json['createEventId'] is String
				? int.tryParse(json['createEventId'])
				: json['createEventId'].toInt();
	}
	if (json['serialNum'] != null) {
		data.serialNum = json['serialNum'] is String
				? int.tryParse(json['serialNum'])
				: json['serialNum'].toInt();
	}
	if (json['channels'] != null) {
		data.channels = (json['channels'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['listenerCount'] != null) {
		data.listenerCount = json['listenerCount'] is String
				? int.tryParse(json['listenerCount'])
				: json['listenerCount'].toInt();
	}
	if (json['feeScope'] != null) {
		data.feeScope = json['feeScope'] is String
				? int.tryParse(json['feeScope'])
				: json['feeScope'].toInt();
	}
	if (json['programFeeType'] != null) {
		data.programFeeType = json['programFeeType'] is String
				? int.tryParse(json['programFeeType'])
				: json['programFeeType'].toInt();
	}
	if (json['pubStatus'] != null) {
		data.pubStatus = json['pubStatus'] is String
				? int.tryParse(json['pubStatus'])
				: json['pubStatus'].toInt();
	}
	if (json['reward'] != null) {
		data.reward = json['reward'];
	}
	if (json['subscribedCount'] != null) {
		data.subscribedCount = json['subscribedCount'] is String
				? int.tryParse(json['subscribedCount'])
				: json['subscribedCount'].toInt();
	}
	if (json['bdAuditStatus'] != null) {
		data.bdAuditStatus = json['bdAuditStatus'] is String
				? int.tryParse(json['bdAuditStatus'])
				: json['bdAuditStatus'].toInt();
	}
	if (json['commentThreadId'] != null) {
		data.commentThreadId = json['commentThreadId'].toString();
	}
	if (json['privacy'] != null) {
		data.privacy = json['privacy'];
	}
	if (json['trackCount'] != null) {
		data.trackCount = json['trackCount'] is String
				? int.tryParse(json['trackCount'])
				: json['trackCount'].toInt();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['shareCount'] != null) {
		data.shareCount = json['shareCount'] is String
				? int.tryParse(json['shareCount'])
				: json['shareCount'].toInt();
	}
	if (json['subscribed'] != null) {
		data.subscribed = json['subscribed'];
	}
	if (json['likedCount'] != null) {
		data.likedCount = json['likedCount'] is String
				? int.tryParse(json['likedCount'])
				: json['likedCount'].toInt();
	}
	if (json['commentCount'] != null) {
		data.commentCount = json['commentCount'] is String
				? int.tryParse(json['commentCount'])
				: json['commentCount'].toInt();
	}
	return data;
}

Map<String, dynamic> djProgramProgramsToJson(DjProgramPrograms entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['mainSong'] = entity.mainSong?.toJson();
	data['songs'] = entity.songs;
	data['dj'] = entity.dj?.toJson();
	data['blurCoverUrl'] = entity.blurCoverUrl;
	data['radio'] = entity.radio?.toJson();
	data['duration'] = entity.duration;
	data['buyed'] = entity.buyed;
	data['programDesc'] = entity.programDesc;
	data['h5Links'] = entity.h5Links;
	data['canReward'] = entity.canReward;
	data['auditStatus'] = entity.auditStatus;
	data['videoInfo'] = entity.videoInfo;
	data['score'] = entity.score;
	data['liveInfo'] = entity.liveInfo;
	data['alg'] = entity.alg;
	data['disPlayStatus'] = entity.disPlayStatus;
	data['auditDisPlayStatus'] = entity.auditDisPlayStatus;
	data['categoryName'] = entity.categoryName;
	data['secondCategoryName'] = entity.secondCategoryName;
	data['isPublish'] = entity.isPublish;
	data['titbitImages'] = entity.titbitImages;
	data['smallLanguageAuditStatus'] = entity.smallLanguageAuditStatus;
	data['titbits'] = entity.titbits;
	data['mainTrackId'] = entity.mainTrackId;
	data['createTime'] = entity.createTime;
	data['categoryId'] = entity.categoryId;
	data['coverUrl'] = entity.coverUrl;
	data['scheduledPublishTime'] = entity.scheduledPublishTime;
	data['secondCategoryId'] = entity.secondCategoryId;
	data['createEventId'] = entity.createEventId;
	data['serialNum'] = entity.serialNum;
	data['channels'] = entity.channels;
	data['listenerCount'] = entity.listenerCount;
	data['feeScope'] = entity.feeScope;
	data['programFeeType'] = entity.programFeeType;
	data['pubStatus'] = entity.pubStatus;
	data['reward'] = entity.reward;
	data['subscribedCount'] = entity.subscribedCount;
	data['bdAuditStatus'] = entity.bdAuditStatus;
	data['commentThreadId'] = entity.commentThreadId;
	data['privacy'] = entity.privacy;
	data['trackCount'] = entity.trackCount;
	data['description'] = entity.description;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['shareCount'] = entity.shareCount;
	data['subscribed'] = entity.subscribed;
	data['likedCount'] = entity.likedCount;
	data['commentCount'] = entity.commentCount;
	return data;
}

djProgramProgramsMainSongFromJson(DjProgramProgramsMainSong data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['position'] != null) {
		data.position = json['position'] is String
				? int.tryParse(json['position'])
				: json['position'].toInt();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['fee'] != null) {
		data.fee = json['fee'] is String
				? int.tryParse(json['fee'])
				: json['fee'].toInt();
	}
	if (json['copyrightId'] != null) {
		data.copyrightId = json['copyrightId'] is String
				? int.tryParse(json['copyrightId'])
				: json['copyrightId'].toInt();
	}
	if (json['disc'] != null) {
		data.disc = json['disc'].toString();
	}
	if (json['no'] != null) {
		data.no = json['no'] is String
				? int.tryParse(json['no'])
				: json['no'].toInt();
	}
	if (json['artists'] != null) {
		data.artists = (json['artists'] as List).map((v) => DjProgramProgramsMainSongArtists().fromJson(v)).toList();
	}
	if (json['album'] != null) {
		data.album = DjProgramProgramsMainSongAlbum().fromJson(json['album']);
	}
	if (json['starred'] != null) {
		data.starred = json['starred'];
	}
	if (json['popularity'] != null) {
		data.popularity = json['popularity'] is String
				? int.tryParse(json['popularity'])
				: json['popularity'].toInt();
	}
	if (json['score'] != null) {
		data.score = json['score'] is String
				? int.tryParse(json['score'])
				: json['score'].toInt();
	}
	if (json['starredNum'] != null) {
		data.starredNum = json['starredNum'] is String
				? int.tryParse(json['starredNum'])
				: json['starredNum'].toInt();
	}
	if (json['duration'] != null) {
		data.duration = json['duration'] is String
				? int.tryParse(json['duration'])
				: json['duration'].toInt();
	}
	if (json['playedNum'] != null) {
		data.playedNum = json['playedNum'] is String
				? int.tryParse(json['playedNum'])
				: json['playedNum'].toInt();
	}
	if (json['dayPlays'] != null) {
		data.dayPlays = json['dayPlays'] is String
				? int.tryParse(json['dayPlays'])
				: json['dayPlays'].toInt();
	}
	if (json['hearTime'] != null) {
		data.hearTime = json['hearTime'] is String
				? int.tryParse(json['hearTime'])
				: json['hearTime'].toInt();
	}
	if (json['ringtone'] != null) {
		data.ringtone = json['ringtone'].toString();
	}
	if (json['crbt'] != null) {
		data.crbt = json['crbt'];
	}
	if (json['audition'] != null) {
		data.audition = json['audition'];
	}
	if (json['copyFrom'] != null) {
		data.copyFrom = json['copyFrom'].toString();
	}
	if (json['commentThreadId'] != null) {
		data.commentThreadId = json['commentThreadId'].toString();
	}
	if (json['rtUrl'] != null) {
		data.rtUrl = json['rtUrl'];
	}
	if (json['ftype'] != null) {
		data.ftype = json['ftype'] is String
				? int.tryParse(json['ftype'])
				: json['ftype'].toInt();
	}
	if (json['rtUrls'] != null) {
		data.rtUrls = (json['rtUrls'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['copyright'] != null) {
		data.copyright = json['copyright'] is String
				? int.tryParse(json['copyright'])
				: json['copyright'].toInt();
	}
	if (json['transName'] != null) {
		data.transName = json['transName'];
	}
	if (json['sign'] != null) {
		data.sign = json['sign'];
	}
	if (json['mark'] != null) {
		data.mark = json['mark'] is String
				? int.tryParse(json['mark'])
				: json['mark'].toInt();
	}
	if (json['noCopyrightRcmd'] != null) {
		data.noCopyrightRcmd = json['noCopyrightRcmd'];
	}
	if (json['bMusic'] != null) {
		data.bMusic = DjProgramProgramsMainSongBMusic().fromJson(json['bMusic']);
	}
	if (json['mp3Url'] != null) {
		data.mp3Url = json['mp3Url'];
	}
	if (json['rtype'] != null) {
		data.rtype = json['rtype'] is String
				? int.tryParse(json['rtype'])
				: json['rtype'].toInt();
	}
	if (json['rurl'] != null) {
		data.rurl = json['rurl'];
	}
	if (json['mvid'] != null) {
		data.mvid = json['mvid'] is String
				? int.tryParse(json['mvid'])
				: json['mvid'].toInt();
	}
	if (json['hMusic'] != null) {
		data.hMusic = DjProgramProgramsMainSongHMusic().fromJson(json['hMusic']);
	}
	if (json['mMusic'] != null) {
		data.mMusic = json['mMusic'];
	}
	if (json['lMusic'] != null) {
		data.lMusic = DjProgramProgramsMainSongLMusic().fromJson(json['lMusic']);
	}
	return data;
}

Map<String, dynamic> djProgramProgramsMainSongToJson(DjProgramProgramsMainSong entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['position'] = entity.position;
	data['alias'] = entity.alias;
	data['status'] = entity.status;
	data['fee'] = entity.fee;
	data['copyrightId'] = entity.copyrightId;
	data['disc'] = entity.disc;
	data['no'] = entity.no;
	data['artists'] =  entity.artists?.map((v) => v.toJson())?.toList();
	data['album'] = entity.album?.toJson();
	data['starred'] = entity.starred;
	data['popularity'] = entity.popularity;
	data['score'] = entity.score;
	data['starredNum'] = entity.starredNum;
	data['duration'] = entity.duration;
	data['playedNum'] = entity.playedNum;
	data['dayPlays'] = entity.dayPlays;
	data['hearTime'] = entity.hearTime;
	data['ringtone'] = entity.ringtone;
	data['crbt'] = entity.crbt;
	data['audition'] = entity.audition;
	data['copyFrom'] = entity.copyFrom;
	data['commentThreadId'] = entity.commentThreadId;
	data['rtUrl'] = entity.rtUrl;
	data['ftype'] = entity.ftype;
	data['rtUrls'] = entity.rtUrls;
	data['copyright'] = entity.copyright;
	data['transName'] = entity.transName;
	data['sign'] = entity.sign;
	data['mark'] = entity.mark;
	data['noCopyrightRcmd'] = entity.noCopyrightRcmd;
	data['bMusic'] = entity.bMusic?.toJson();
	data['mp3Url'] = entity.mp3Url;
	data['rtype'] = entity.rtype;
	data['rurl'] = entity.rurl;
	data['mvid'] = entity.mvid;
	data['hMusic'] = entity.hMusic?.toJson();
	data['mMusic'] = entity.mMusic;
	data['lMusic'] = entity.lMusic?.toJson();
	return data;
}

djProgramProgramsMainSongArtistsFromJson(DjProgramProgramsMainSongArtists data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['img1v1Id'] != null) {
		data.img1v1Id = json['img1v1Id'] is String
				? int.tryParse(json['img1v1Id'])
				: json['img1v1Id'].toInt();
	}
	if (json['briefDesc'] != null) {
		data.briefDesc = json['briefDesc'].toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['img1v1Url'] != null) {
		data.img1v1Url = json['img1v1Url'].toString();
	}
	if (json['albumSize'] != null) {
		data.albumSize = json['albumSize'] is String
				? int.tryParse(json['albumSize'])
				: json['albumSize'].toInt();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['trans'] != null) {
		data.trans = json['trans'].toString();
	}
	if (json['musicSize'] != null) {
		data.musicSize = json['musicSize'] is String
				? int.tryParse(json['musicSize'])
				: json['musicSize'].toInt();
	}
	if (json['topicPerson'] != null) {
		data.topicPerson = json['topicPerson'] is String
				? int.tryParse(json['topicPerson'])
				: json['topicPerson'].toInt();
	}
	return data;
}

Map<String, dynamic> djProgramProgramsMainSongArtistsToJson(DjProgramProgramsMainSongArtists entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['picId'] = entity.picId;
	data['img1v1Id'] = entity.img1v1Id;
	data['briefDesc'] = entity.briefDesc;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['albumSize'] = entity.albumSize;
	data['alias'] = entity.alias;
	data['trans'] = entity.trans;
	data['musicSize'] = entity.musicSize;
	data['topicPerson'] = entity.topicPerson;
	return data;
}

djProgramProgramsMainSongAlbumFromJson(DjProgramProgramsMainSongAlbum data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['type'] != null) {
		data.type = json['type'];
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['blurPicUrl'] != null) {
		data.blurPicUrl = json['blurPicUrl'];
	}
	if (json['companyId'] != null) {
		data.companyId = json['companyId'] is String
				? int.tryParse(json['companyId'])
				: json['companyId'].toInt();
	}
	if (json['pic'] != null) {
		data.pic = json['pic'] is String
				? int.tryParse(json['pic'])
				: json['pic'].toInt();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['publishTime'] != null) {
		data.publishTime = json['publishTime'] is String
				? int.tryParse(json['publishTime'])
				: json['publishTime'].toInt();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['tags'] != null) {
		data.tags = json['tags'].toString();
	}
	if (json['company'] != null) {
		data.company = json['company'];
	}
	if (json['briefDesc'] != null) {
		data.briefDesc = json['briefDesc'].toString();
	}
	if (json['artist'] != null) {
		data.artist = DjProgramProgramsMainSongAlbumArtist().fromJson(json['artist']);
	}
	if (json['songs'] != null) {
		data.songs = (json['songs'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['copyrightId'] != null) {
		data.copyrightId = json['copyrightId'] is String
				? int.tryParse(json['copyrightId'])
				: json['copyrightId'].toInt();
	}
	if (json['commentThreadId'] != null) {
		data.commentThreadId = json['commentThreadId'].toString();
	}
	if (json['artists'] != null) {
		data.artists = (json['artists'] as List).map((v) => DjProgramProgramsMainSongAlbumArtists().fromJson(v)).toList();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'];
	}
	if (json['transName'] != null) {
		data.transName = json['transName'];
	}
	if (json['mark'] != null) {
		data.mark = json['mark'] is String
				? int.tryParse(json['mark'])
				: json['mark'].toInt();
	}
	return data;
}

Map<String, dynamic> djProgramProgramsMainSongAlbumToJson(DjProgramProgramsMainSongAlbum entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['type'] = entity.type;
	data['size'] = entity.size;
	data['picId'] = entity.picId;
	data['blurPicUrl'] = entity.blurPicUrl;
	data['companyId'] = entity.companyId;
	data['pic'] = entity.pic;
	data['picUrl'] = entity.picUrl;
	data['publishTime'] = entity.publishTime;
	data['description'] = entity.description;
	data['tags'] = entity.tags;
	data['company'] = entity.company;
	data['briefDesc'] = entity.briefDesc;
	data['artist'] = entity.artist?.toJson();
	data['songs'] = entity.songs;
	data['alias'] = entity.alias;
	data['status'] = entity.status;
	data['copyrightId'] = entity.copyrightId;
	data['commentThreadId'] = entity.commentThreadId;
	data['artists'] =  entity.artists?.map((v) => v.toJson())?.toList();
	data['subType'] = entity.subType;
	data['transName'] = entity.transName;
	data['mark'] = entity.mark;
	return data;
}

djProgramProgramsMainSongAlbumArtistFromJson(DjProgramProgramsMainSongAlbumArtist data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['img1v1Id'] != null) {
		data.img1v1Id = json['img1v1Id'] is String
				? int.tryParse(json['img1v1Id'])
				: json['img1v1Id'].toInt();
	}
	if (json['briefDesc'] != null) {
		data.briefDesc = json['briefDesc'].toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['img1v1Url'] != null) {
		data.img1v1Url = json['img1v1Url'].toString();
	}
	if (json['albumSize'] != null) {
		data.albumSize = json['albumSize'] is String
				? int.tryParse(json['albumSize'])
				: json['albumSize'].toInt();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['trans'] != null) {
		data.trans = json['trans'].toString();
	}
	if (json['musicSize'] != null) {
		data.musicSize = json['musicSize'] is String
				? int.tryParse(json['musicSize'])
				: json['musicSize'].toInt();
	}
	if (json['topicPerson'] != null) {
		data.topicPerson = json['topicPerson'] is String
				? int.tryParse(json['topicPerson'])
				: json['topicPerson'].toInt();
	}
	return data;
}

Map<String, dynamic> djProgramProgramsMainSongAlbumArtistToJson(DjProgramProgramsMainSongAlbumArtist entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['picId'] = entity.picId;
	data['img1v1Id'] = entity.img1v1Id;
	data['briefDesc'] = entity.briefDesc;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['albumSize'] = entity.albumSize;
	data['alias'] = entity.alias;
	data['trans'] = entity.trans;
	data['musicSize'] = entity.musicSize;
	data['topicPerson'] = entity.topicPerson;
	return data;
}

djProgramProgramsMainSongAlbumArtistsFromJson(DjProgramProgramsMainSongAlbumArtists data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['img1v1Id'] != null) {
		data.img1v1Id = json['img1v1Id'] is String
				? int.tryParse(json['img1v1Id'])
				: json['img1v1Id'].toInt();
	}
	if (json['briefDesc'] != null) {
		data.briefDesc = json['briefDesc'].toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['img1v1Url'] != null) {
		data.img1v1Url = json['img1v1Url'].toString();
	}
	if (json['albumSize'] != null) {
		data.albumSize = json['albumSize'] is String
				? int.tryParse(json['albumSize'])
				: json['albumSize'].toInt();
	}
	if (json['alias'] != null) {
		data.alias = (json['alias'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['trans'] != null) {
		data.trans = json['trans'].toString();
	}
	if (json['musicSize'] != null) {
		data.musicSize = json['musicSize'] is String
				? int.tryParse(json['musicSize'])
				: json['musicSize'].toInt();
	}
	if (json['topicPerson'] != null) {
		data.topicPerson = json['topicPerson'] is String
				? int.tryParse(json['topicPerson'])
				: json['topicPerson'].toInt();
	}
	return data;
}

Map<String, dynamic> djProgramProgramsMainSongAlbumArtistsToJson(DjProgramProgramsMainSongAlbumArtists entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['picId'] = entity.picId;
	data['img1v1Id'] = entity.img1v1Id;
	data['briefDesc'] = entity.briefDesc;
	data['picUrl'] = entity.picUrl;
	data['img1v1Url'] = entity.img1v1Url;
	data['albumSize'] = entity.albumSize;
	data['alias'] = entity.alias;
	data['trans'] = entity.trans;
	data['musicSize'] = entity.musicSize;
	data['topicPerson'] = entity.topicPerson;
	return data;
}

djProgramProgramsMainSongBMusicFromJson(DjProgramProgramsMainSongBMusic data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'];
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['extension'] != null) {
		data.extension = json['extension'].toString();
	}
	if (json['sr'] != null) {
		data.sr = json['sr'] is String
				? int.tryParse(json['sr'])
				: json['sr'].toInt();
	}
	if (json['dfsId'] != null) {
		data.dfsId = json['dfsId'] is String
				? int.tryParse(json['dfsId'])
				: json['dfsId'].toInt();
	}
	if (json['bitrate'] != null) {
		data.bitrate = json['bitrate'] is String
				? int.tryParse(json['bitrate'])
				: json['bitrate'].toInt();
	}
	if (json['playTime'] != null) {
		data.playTime = json['playTime'] is String
				? int.tryParse(json['playTime'])
				: json['playTime'].toInt();
	}
	if (json['volumeDelta'] != null) {
		data.volumeDelta = json['volumeDelta'] is String
				? int.tryParse(json['volumeDelta'])
				: json['volumeDelta'].toInt();
	}
	return data;
}

Map<String, dynamic> djProgramProgramsMainSongBMusicToJson(DjProgramProgramsMainSongBMusic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['size'] = entity.size;
	data['extension'] = entity.extension;
	data['sr'] = entity.sr;
	data['dfsId'] = entity.dfsId;
	data['bitrate'] = entity.bitrate;
	data['playTime'] = entity.playTime;
	data['volumeDelta'] = entity.volumeDelta;
	return data;
}

djProgramProgramsMainSongHMusicFromJson(DjProgramProgramsMainSongHMusic data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'];
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['extension'] != null) {
		data.extension = json['extension'].toString();
	}
	if (json['sr'] != null) {
		data.sr = json['sr'] is String
				? int.tryParse(json['sr'])
				: json['sr'].toInt();
	}
	if (json['dfsId'] != null) {
		data.dfsId = json['dfsId'] is String
				? int.tryParse(json['dfsId'])
				: json['dfsId'].toInt();
	}
	if (json['bitrate'] != null) {
		data.bitrate = json['bitrate'] is String
				? int.tryParse(json['bitrate'])
				: json['bitrate'].toInt();
	}
	if (json['playTime'] != null) {
		data.playTime = json['playTime'] is String
				? int.tryParse(json['playTime'])
				: json['playTime'].toInt();
	}
	if (json['volumeDelta'] != null) {
		data.volumeDelta = json['volumeDelta'] is String
				? int.tryParse(json['volumeDelta'])
				: json['volumeDelta'].toInt();
	}
	return data;
}

Map<String, dynamic> djProgramProgramsMainSongHMusicToJson(DjProgramProgramsMainSongHMusic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['size'] = entity.size;
	data['extension'] = entity.extension;
	data['sr'] = entity.sr;
	data['dfsId'] = entity.dfsId;
	data['bitrate'] = entity.bitrate;
	data['playTime'] = entity.playTime;
	data['volumeDelta'] = entity.volumeDelta;
	return data;
}

djProgramProgramsMainSongLMusicFromJson(DjProgramProgramsMainSongLMusic data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'];
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['extension'] != null) {
		data.extension = json['extension'].toString();
	}
	if (json['sr'] != null) {
		data.sr = json['sr'] is String
				? int.tryParse(json['sr'])
				: json['sr'].toInt();
	}
	if (json['dfsId'] != null) {
		data.dfsId = json['dfsId'] is String
				? int.tryParse(json['dfsId'])
				: json['dfsId'].toInt();
	}
	if (json['bitrate'] != null) {
		data.bitrate = json['bitrate'] is String
				? int.tryParse(json['bitrate'])
				: json['bitrate'].toInt();
	}
	if (json['playTime'] != null) {
		data.playTime = json['playTime'] is String
				? int.tryParse(json['playTime'])
				: json['playTime'].toInt();
	}
	if (json['volumeDelta'] != null) {
		data.volumeDelta = json['volumeDelta'] is String
				? int.tryParse(json['volumeDelta'])
				: json['volumeDelta'].toInt();
	}
	return data;
}

Map<String, dynamic> djProgramProgramsMainSongLMusicToJson(DjProgramProgramsMainSongLMusic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['size'] = entity.size;
	data['extension'] = entity.extension;
	data['sr'] = entity.sr;
	data['dfsId'] = entity.dfsId;
	data['bitrate'] = entity.bitrate;
	data['playTime'] = entity.playTime;
	data['volumeDelta'] = entity.volumeDelta;
	return data;
}

djProgramProgramsDjFromJson(DjProgramProgramsDj data, Map<String, dynamic> json) {
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
	if (json['anchor'] != null) {
		data.anchor = json['anchor'];
	}
	if (json['avatarImgIdStr'] != null) {
		data.avatarImgIdStr = json['avatarImgIdStr'].toString();
	}
	if (json['backgroundImgIdStr'] != null) {
		data.backgroundImgIdStr = json['backgroundImgIdStr'].toString();
	}
	if (json['avatarImgId_str'] != null) {
		data.avatarimgidStr = json['avatarImgId_str'].toString();
	}
	if (json['brand'] != null) {
		data.brand = json['brand'].toString();
	}
	return data;
}

Map<String, dynamic> djProgramProgramsDjToJson(DjProgramProgramsDj entity) {
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
	data['anchor'] = entity.anchor;
	data['avatarImgIdStr'] = entity.avatarImgIdStr;
	data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
	data['avatarImgId_str'] = entity.avatarimgidStr;
	data['brand'] = entity.brand;
	return data;
}

djProgramProgramsRadioFromJson(DjProgramProgramsRadio data, Map<String, dynamic> json) {
	if (json['dj'] != null) {
		data.dj = json['dj'];
	}
	if (json['category'] != null) {
		data.category = json['category'].toString();
	}
	if (json['secondCategory'] != null) {
		data.secondCategory = json['secondCategory'];
	}
	if (json['buyed'] != null) {
		data.buyed = json['buyed'];
	}
	if (json['price'] != null) {
		data.price = json['price'] is String
				? int.tryParse(json['price'])
				: json['price'].toInt();
	}
	if (json['originalPrice'] != null) {
		data.originalPrice = json['originalPrice'] is String
				? int.tryParse(json['originalPrice'])
				: json['originalPrice'].toInt();
	}
	if (json['discountPrice'] != null) {
		data.discountPrice = json['discountPrice'];
	}
	if (json['purchaseCount'] != null) {
		data.purchaseCount = json['purchaseCount'] is String
				? int.tryParse(json['purchaseCount'])
				: json['purchaseCount'].toInt();
	}
	if (json['lastProgramName'] != null) {
		data.lastProgramName = json['lastProgramName'];
	}
	if (json['videos'] != null) {
		data.videos = json['videos'];
	}
	if (json['finished'] != null) {
		data.finished = json['finished'];
	}
	if (json['underShelf'] != null) {
		data.underShelf = json['underShelf'];
	}
	if (json['liveInfo'] != null) {
		data.liveInfo = json['liveInfo'];
	}
	if (json['playCount'] != null) {
		data.playCount = json['playCount'] is String
				? int.tryParse(json['playCount'])
				: json['playCount'].toInt();
	}
	if (json['privacy'] != null) {
		data.privacy = json['privacy'];
	}
	if (json['icon'] != null) {
		data.icon = json['icon'];
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
	if (json['programCount'] != null) {
		data.programCount = json['programCount'] is String
				? int.tryParse(json['programCount'])
				: json['programCount'].toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId'] is String
				? int.tryParse(json['picId'])
				: json['picId'].toInt();
	}
	if (json['subCount'] != null) {
		data.subCount = json['subCount'] is String
				? int.tryParse(json['subCount'])
				: json['subCount'].toInt();
	}
	if (json['lastProgramCreateTime'] != null) {
		data.lastProgramCreateTime = json['lastProgramCreateTime'] is String
				? int.tryParse(json['lastProgramCreateTime'])
				: json['lastProgramCreateTime'].toInt();
	}
	if (json['radioFeeType'] != null) {
		data.radioFeeType = json['radioFeeType'] is String
				? int.tryParse(json['radioFeeType'])
				: json['radioFeeType'].toInt();
	}
	if (json['lastProgramId'] != null) {
		data.lastProgramId = json['lastProgramId'] is String
				? int.tryParse(json['lastProgramId'])
				: json['lastProgramId'].toInt();
	}
	if (json['feeScope'] != null) {
		data.feeScope = json['feeScope'] is String
				? int.tryParse(json['feeScope'])
				: json['feeScope'].toInt();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['desc'] != null) {
		data.desc = json['desc'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	return data;
}

Map<String, dynamic> djProgramProgramsRadioToJson(DjProgramProgramsRadio entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['dj'] = entity.dj;
	data['category'] = entity.category;
	data['secondCategory'] = entity.secondCategory;
	data['buyed'] = entity.buyed;
	data['price'] = entity.price;
	data['originalPrice'] = entity.originalPrice;
	data['discountPrice'] = entity.discountPrice;
	data['purchaseCount'] = entity.purchaseCount;
	data['lastProgramName'] = entity.lastProgramName;
	data['videos'] = entity.videos;
	data['finished'] = entity.finished;
	data['underShelf'] = entity.underShelf;
	data['liveInfo'] = entity.liveInfo;
	data['playCount'] = entity.playCount;
	data['privacy'] = entity.privacy;
	data['icon'] = entity.icon;
	data['createTime'] = entity.createTime;
	data['categoryId'] = entity.categoryId;
	data['programCount'] = entity.programCount;
	data['picId'] = entity.picId;
	data['subCount'] = entity.subCount;
	data['lastProgramCreateTime'] = entity.lastProgramCreateTime;
	data['radioFeeType'] = entity.radioFeeType;
	data['lastProgramId'] = entity.lastProgramId;
	data['feeScope'] = entity.feeScope;
	data['picUrl'] = entity.picUrl;
	data['desc'] = entity.desc;
	data['name'] = entity.name;
	data['id'] = entity.id;
	return data;
}
