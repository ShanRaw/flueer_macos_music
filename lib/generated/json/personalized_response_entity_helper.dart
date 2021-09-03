import 'package:music/models/automation/personalized_response_entity.dart';

personalizedResponseEntityFromJson(PersonalizedResponseEntity data, Map<String, dynamic> json) {
	if (json['hasTaste'] != null) {
		data.hasTaste = json['hasTaste'];
	}
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['category'] != null) {
		data.category = json['category'] is String
				? int.tryParse(json['category'])
				: json['category'].toInt();
	}
	if (json['result'] != null) {
		data.result = (json['result'] as List).map((v) => PersonalizedResponseResult().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> personalizedResponseEntityToJson(PersonalizedResponseEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['hasTaste'] = entity.hasTaste;
	data['code'] = entity.code;
	data['category'] = entity.category;
	data['result'] =  entity.result?.map((v) => v.toJson())?.toList();
	return data;
}

personalizedResponseResultFromJson(PersonalizedResponseResult data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['copywriter'] != null) {
		data.copywriter = json['copywriter'].toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'].toString();
	}
	if (json['canDislike'] != null) {
		data.canDislike = json['canDislike'];
	}
	if (json['trackNumberUpdateTime'] != null) {
		data.trackNumberUpdateTime = json['trackNumberUpdateTime'] is String
				? int.tryParse(json['trackNumberUpdateTime'])
				: json['trackNumberUpdateTime'].toInt();
	}
	if (json['playCount'] != null) {
		data.playCount = json['playCount'] is String
				? int.tryParse(json['playCount'])
				: json['playCount'].toInt();
	}
	if (json['trackCount'] != null) {
		data.trackCount = json['trackCount'] is String
				? int.tryParse(json['trackCount'])
				: json['trackCount'].toInt();
	}
	if (json['highQuality'] != null) {
		data.highQuality = json['highQuality'];
	}
	if (json['alg'] != null) {
		data.alg = json['alg'].toString();
	}
	return data;
}

Map<String, dynamic> personalizedResponseResultToJson(PersonalizedResponseResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['type'] = entity.type;
	data['name'] = entity.name;
	data['copywriter'] = entity.copywriter;
	data['picUrl'] = entity.picUrl;
	data['canDislike'] = entity.canDislike;
	data['trackNumberUpdateTime'] = entity.trackNumberUpdateTime;
	data['playCount'] = entity.playCount;
	data['trackCount'] = entity.trackCount;
	data['highQuality'] = entity.highQuality;
	data['alg'] = entity.alg;
	return data;
}
