import 'package:music/generated/json/base/json_convert_content.dart';

class MvUrlEntity with JsonConvert<MvUrlEntity> {
	int? code;
	MvUrlData? data;
}

class MvUrlData with JsonConvert<MvUrlData> {
	int? id;
	String? url;
	int? r;
	int? size;
	String? md5;
	int? code;
	int? expi;
	int? fee;
	int? mvFee;
	int? st;
	dynamic? promotionVo;
	String? msg;
}
