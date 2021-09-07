import 'package:music/generated/json/base/json_convert_content.dart';

class TopMvEntity with JsonConvert<TopMvEntity> {
	int? code;
	List<TopMvData>? data;
	bool? hasMore;
	int? updateTime;
}

class TopMvData with JsonConvert<TopMvData> {
	int? id;
	String? cover;
	String? name;
	int? playCount;
	String? briefDesc;
	dynamic? desc;
	String? artistName;
	int? artistId;
	int? duration;
	int? mark;
	TopMvDataMv? mv;
	int? lastRank;
	int? score;
	bool? subed;
	List<TopMvDataArtists>? artists;
	List<String>? alias;
	List<String>? transNames;
}

class TopMvDataMv with JsonConvert<TopMvDataMv> {
	int? authId;
	int? status;
	int? id;
	String? title;
	String? subTitle;
	String? appTitle;
	String? aliaName;
	String? transName;
	int? pic4v3;
	int? pic16v9;
	int? caption;
	String? captionLanguage;
	dynamic? style;
	String? mottos;
	dynamic? oneword;
	String? appword;
	dynamic? stars;
	String? desc;
	String? area;
	String? type;
	String? subType;
	int? neteaseonly;
	int? upban;
	String? topWeeks;
	String? publishTime;
	int? online;
	int? score;
	int? plays;
	int? monthplays;
	int? weekplays;
	int? dayplays;
	int? fee;
	List<TopMvDataMvArtists>? artists;
	List<TopMvDataMvVideos>? videos;
}

class TopMvDataMvArtists with JsonConvert<TopMvDataMvArtists> {
	int? id;
	String? name;
}

class TopMvDataMvVideos with JsonConvert<TopMvDataMvVideos> {
	TopMvDataMvVideosTagSign? tagSign;
	String? tag;
	String? url;
	int? duration;
	int? size;
	int? width;
	int? height;
	String? container;
	String? md5;
	bool? check;
}

class TopMvDataMvVideosTagSign with JsonConvert<TopMvDataMvVideosTagSign> {
	int? br;
	String? type;
	String? tagSign;
	String? mvtype;
	int? resolution;
}

class TopMvDataArtists with JsonConvert<TopMvDataArtists> {
	int? id;
	String? name;
}
