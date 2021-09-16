import 'package:music/models/automation/mv_url_entity.dart';

mvUrlEntityFromJson(MvUrlEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['data'] != null) {
		data.data = MvUrlData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> mvUrlEntityToJson(MvUrlEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['data'] = entity.data?.toJson();
	return data;
}

mvUrlDataFromJson(MvUrlData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['r'] != null) {
		data.r = json['r'] is String
				? int.tryParse(json['r'])
				: json['r'].toInt();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['md5'] != null) {
		data.md5 = json['md5'].toString();
	}
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['expi'] != null) {
		data.expi = json['expi'] is String
				? int.tryParse(json['expi'])
				: json['expi'].toInt();
	}
	if (json['fee'] != null) {
		data.fee = json['fee'] is String
				? int.tryParse(json['fee'])
				: json['fee'].toInt();
	}
	if (json['mvFee'] != null) {
		data.mvFee = json['mvFee'] is String
				? int.tryParse(json['mvFee'])
				: json['mvFee'].toInt();
	}
	if (json['st'] != null) {
		data.st = json['st'] is String
				? int.tryParse(json['st'])
				: json['st'].toInt();
	}
	if (json['promotionVo'] != null) {
		data.promotionVo = json['promotionVo'];
	}
	if (json['msg'] != null) {
		data.msg = json['msg'].toString();
	}
	return data;
}

Map<String, dynamic> mvUrlDataToJson(MvUrlData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['url'] = entity.url;
	data['r'] = entity.r;
	data['size'] = entity.size;
	data['md5'] = entity.md5;
	data['code'] = entity.code;
	data['expi'] = entity.expi;
	data['fee'] = entity.fee;
	data['mvFee'] = entity.mvFee;
	data['st'] = entity.st;
	data['promotionVo'] = entity.promotionVo;
	data['msg'] = entity.msg;
	return data;
}
