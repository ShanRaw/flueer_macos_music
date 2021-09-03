import 'package:music/generated/json/base/json_convert_content.dart';

class PersonalizedResponseEntity with JsonConvert<PersonalizedResponseEntity> {
	bool? hasTaste;
	int? code;
	int? category;
	List<PersonalizedResponseResult>? result;
}

class PersonalizedResponseResult with JsonConvert<PersonalizedResponseResult> {
	int? id;
	int? type;
	String? name;
	String? copywriter;
	String? picUrl;
	bool? canDislike;
	int? trackNumberUpdateTime;
	int? playCount;
	int? trackCount;
	bool? highQuality;
	String? alg;
}
