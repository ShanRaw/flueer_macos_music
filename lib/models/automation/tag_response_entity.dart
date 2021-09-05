import 'package:music/generated/json/base/json_convert_content.dart';

class TagResponseEntity with JsonConvert<TagResponseEntity> {
	List<TagResponseTags>? tags;
	int? code;
}

class TagResponseTags with JsonConvert<TagResponseTags> {
	TagResponseTagsPlaylistTag? playlistTag;
	bool? activity;
	bool? hot;
	int? usedCount;
	int? position;
	int? category;
	int? createTime;
	String? name;
	int? id;
	int? type;
}

class TagResponseTagsPlaylistTag with JsonConvert<TagResponseTagsPlaylistTag> {
	int? id;
	String? name;
	int? category;
	int? usedCount;
	int? type;
	int? position;
	int? createTime;
	int? highQuality;
	int? highQualityPos;
	int? officialPos;
}
