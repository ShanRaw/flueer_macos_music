import 'package:music/generated/json/base/json_convert_content.dart';

class PersonalizedPrivatecontentEntity with JsonConvert<PersonalizedPrivatecontentEntity> {
	int? code;
	String? name;
	List<PersonalizedPrivatecontentResult>? result;
}

class PersonalizedPrivatecontentResult with JsonConvert<PersonalizedPrivatecontentResult> {
	int? id;
	String? url;
	String? picUrl;
	String? sPicUrl;
	int? type;
	String? copywriter;
	String? name;
	String? alg;
}
