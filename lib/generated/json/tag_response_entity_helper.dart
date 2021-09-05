import 'package:music/models/automation/tag_response_entity.dart';

tagResponseEntityFromJson(TagResponseEntity data, Map<String, dynamic> json) {
	if (json['tags'] != null) {
		data.tags = (json['tags'] as List).map((v) => TagResponseTags().fromJson(v)).toList();
	}
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	return data;
}

Map<String, dynamic> tagResponseEntityToJson(TagResponseEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['tags'] =  entity.tags?.map((v) => v.toJson())?.toList();
	data['code'] = entity.code;
	return data;
}

tagResponseTagsFromJson(TagResponseTags data, Map<String, dynamic> json) {
	if (json['playlistTag'] != null) {
		data.playlistTag = TagResponseTagsPlaylistTag().fromJson(json['playlistTag']);
	}
	if (json['activity'] != null) {
		data.activity = json['activity'];
	}
	if (json['hot'] != null) {
		data.hot = json['hot'];
	}
	if (json['usedCount'] != null) {
		data.usedCount = json['usedCount'] is String
				? int.tryParse(json['usedCount'])
				: json['usedCount'].toInt();
	}
	if (json['position'] != null) {
		data.position = json['position'] is String
				? int.tryParse(json['position'])
				: json['position'].toInt();
	}
	if (json['category'] != null) {
		data.category = json['category'] is String
				? int.tryParse(json['category'])
				: json['category'].toInt();
	}
	if (json['createTime'] != null) {
		data.createTime = json['createTime'] is String
				? int.tryParse(json['createTime'])
				: json['createTime'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
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
	return data;
}

Map<String, dynamic> tagResponseTagsToJson(TagResponseTags entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['playlistTag'] = entity.playlistTag?.toJson();
	data['activity'] = entity.activity;
	data['hot'] = entity.hot;
	data['usedCount'] = entity.usedCount;
	data['position'] = entity.position;
	data['category'] = entity.category;
	data['createTime'] = entity.createTime;
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['type'] = entity.type;
	return data;
}

tagResponseTagsPlaylistTagFromJson(TagResponseTagsPlaylistTag data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['category'] != null) {
		data.category = json['category'] is String
				? int.tryParse(json['category'])
				: json['category'].toInt();
	}
	if (json['usedCount'] != null) {
		data.usedCount = json['usedCount'] is String
				? int.tryParse(json['usedCount'])
				: json['usedCount'].toInt();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['position'] != null) {
		data.position = json['position'] is String
				? int.tryParse(json['position'])
				: json['position'].toInt();
	}
	if (json['createTime'] != null) {
		data.createTime = json['createTime'] is String
				? int.tryParse(json['createTime'])
				: json['createTime'].toInt();
	}
	if (json['highQuality'] != null) {
		data.highQuality = json['highQuality'] is String
				? int.tryParse(json['highQuality'])
				: json['highQuality'].toInt();
	}
	if (json['highQualityPos'] != null) {
		data.highQualityPos = json['highQualityPos'] is String
				? int.tryParse(json['highQualityPos'])
				: json['highQualityPos'].toInt();
	}
	if (json['officialPos'] != null) {
		data.officialPos = json['officialPos'] is String
				? int.tryParse(json['officialPos'])
				: json['officialPos'].toInt();
	}
	return data;
}

Map<String, dynamic> tagResponseTagsPlaylistTagToJson(TagResponseTagsPlaylistTag entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['category'] = entity.category;
	data['usedCount'] = entity.usedCount;
	data['type'] = entity.type;
	data['position'] = entity.position;
	data['createTime'] = entity.createTime;
	data['highQuality'] = entity.highQuality;
	data['highQualityPos'] = entity.highQualityPos;
	data['officialPos'] = entity.officialPos;
	return data;
}
