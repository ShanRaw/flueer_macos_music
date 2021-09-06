import 'package:music/models/automation/personalized_privatecontent_entity.dart';

personalizedPrivatecontentEntityFromJson(PersonalizedPrivatecontentEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['result'] != null) {
		data.result = (json['result'] as List).map((v) => PersonalizedPrivatecontentResult().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> personalizedPrivatecontentEntityToJson(PersonalizedPrivatecontentEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['name'] = entity.name;
	data['result'] =  entity.result?.map((v) => v.toJson())?.toList();
	return data;
}

personalizedPrivatecontentResultFromJson(PersonalizedPrivatecontentResult data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['sPicUrl'] != null) {
		data.sPicUrl = json['sPicUrl'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['copywriter'] != null) {
		data.copywriter = json['copywriter'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['alg'] != null) {
		data.alg = json['alg'].toString();
	}
	return data;
}

Map<String, dynamic> personalizedPrivatecontentResultToJson(PersonalizedPrivatecontentResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['url'] = entity.url;
	data['picUrl'] = entity.picUrl;
	data['sPicUrl'] = entity.sPicUrl;
	data['type'] = entity.type;
	data['copywriter'] = entity.copywriter;
	data['name'] = entity.name;
	data['alg'] = entity.alg;
	return data;
}
