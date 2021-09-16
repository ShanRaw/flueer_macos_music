import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/generated/json/base/json_field.dart';

class MvDetailEntity with JsonConvert<MvDetailEntity> {
	String? loadingPic;
	String? bufferPic;
	String? loadingPicFS;
	String? bufferPicFS;
	bool? subed;
	MvDetailMp? mp;
	MvDetailData? data;
	int? code;
}

class MvDetailMp with JsonConvert<MvDetailMp> {
	int? id;
	int? fee;
	int? mvFee;
	int? payed;
	int? pl;
	int? dl;
	int? cp;
	int? sid;
	int? st;
	bool? normal;
	bool? unauthorized;
	dynamic? msg;
}

class MvDetailData with JsonConvert<MvDetailData> {
	int? id;
	String? name;
	int? artistId;
	String? artistName;
	String? briefDesc;
	String? desc;
	String? cover;
	@JSONField(name: "coverId_str")
	String? coveridStr;
	int? coverId;
	int? playCount;
	int? subCount;
	int? shareCount;
	int? commentCount;
	int? duration;
	int? nType;
	String? publishTime;
	dynamic? price;
	List<MvDetailDataBrs>? brs;
	List<MvDetailDataArtists>? artists;
	List<String>? alias;
	String? commentThreadId;
	List<dynamic>? videoGroup;
}

class MvDetailDataBrs with JsonConvert<MvDetailDataBrs> {
	int? size;
	int? br;
	int? point;
}

class MvDetailDataArtists with JsonConvert<MvDetailDataArtists> {
	int? id;
	String? name;
	dynamic? img1v1Url;
	bool? followed;
}
