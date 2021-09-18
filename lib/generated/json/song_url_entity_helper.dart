import 'package:music/models/automation/song_url_entity.dart';

songUrlEntityFromJson(SongUrlEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = (json['data'] as List).map((v) => SongUrlData().fromJson(v)).toList();
	}
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	return data;
}

Map<String, dynamic> songUrlEntityToJson(SongUrlEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['data'] =  entity.data?.map((v) => v.toJson())?.toList();
	data['code'] = entity.code;
	return data;
}

songUrlDataFromJson(SongUrlData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['br'] != null) {
		data.br = json['br'] is String
				? int.tryParse(json['br'])
				: json['br'].toInt();
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
	if (json['type'] != null) {
		data.type = json['type'].toString();
	}
	if (json['gain'] != null) {
		data.gain = json['gain'] is String
				? int.tryParse(json['gain'])
				: json['gain'].toInt();
	}
	if (json['fee'] != null) {
		data.fee = json['fee'] is String
				? int.tryParse(json['fee'])
				: json['fee'].toInt();
	}
	if (json['uf'] != null) {
		data.uf = json['uf'];
	}
	if (json['payed'] != null) {
		data.payed = json['payed'] is String
				? int.tryParse(json['payed'])
				: json['payed'].toInt();
	}
	if (json['flag'] != null) {
		data.flag = json['flag'] is String
				? int.tryParse(json['flag'])
				: json['flag'].toInt();
	}
	if (json['canExtend'] != null) {
		data.canExtend = json['canExtend'];
	}
	if (json['freeTrialInfo'] != null) {
		data.freeTrialInfo = json['freeTrialInfo'];
	}
	if (json['level'] != null) {
		data.level = json['level'].toString();
	}
	if (json['encodeType'] != null) {
		data.encodeType = json['encodeType'].toString();
	}
	if (json['freeTrialPrivilege'] != null) {
		data.freeTrialPrivilege = SongUrlDataFreeTrialPrivilege().fromJson(json['freeTrialPrivilege']);
	}
	if (json['freeTimeTrialPrivilege'] != null) {
		data.freeTimeTrialPrivilege = SongUrlDataFreeTimeTrialPrivilege().fromJson(json['freeTimeTrialPrivilege']);
	}
	if (json['urlSource'] != null) {
		data.urlSource = json['urlSource'] is String
				? int.tryParse(json['urlSource'])
				: json['urlSource'].toInt();
	}
	return data;
}

Map<String, dynamic> songUrlDataToJson(SongUrlData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['url'] = entity.url;
	data['br'] = entity.br;
	data['size'] = entity.size;
	data['md5'] = entity.md5;
	data['code'] = entity.code;
	data['expi'] = entity.expi;
	data['type'] = entity.type;
	data['gain'] = entity.gain;
	data['fee'] = entity.fee;
	data['uf'] = entity.uf;
	data['payed'] = entity.payed;
	data['flag'] = entity.flag;
	data['canExtend'] = entity.canExtend;
	data['freeTrialInfo'] = entity.freeTrialInfo;
	data['level'] = entity.level;
	data['encodeType'] = entity.encodeType;
	data['freeTrialPrivilege'] = entity.freeTrialPrivilege?.toJson();
	data['freeTimeTrialPrivilege'] = entity.freeTimeTrialPrivilege?.toJson();
	data['urlSource'] = entity.urlSource;
	return data;
}

songUrlDataFreeTrialPrivilegeFromJson(SongUrlDataFreeTrialPrivilege data, Map<String, dynamic> json) {
	if (json['resConsumable'] != null) {
		data.resConsumable = json['resConsumable'];
	}
	if (json['userConsumable'] != null) {
		data.userConsumable = json['userConsumable'];
	}
	return data;
}

Map<String, dynamic> songUrlDataFreeTrialPrivilegeToJson(SongUrlDataFreeTrialPrivilege entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	return data;
}

songUrlDataFreeTimeTrialPrivilegeFromJson(SongUrlDataFreeTimeTrialPrivilege data, Map<String, dynamic> json) {
	if (json['resConsumable'] != null) {
		data.resConsumable = json['resConsumable'];
	}
	if (json['userConsumable'] != null) {
		data.userConsumable = json['userConsumable'];
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['remainTime'] != null) {
		data.remainTime = json['remainTime'] is String
				? int.tryParse(json['remainTime'])
				: json['remainTime'].toInt();
	}
	return data;
}

Map<String, dynamic> songUrlDataFreeTimeTrialPrivilegeToJson(SongUrlDataFreeTimeTrialPrivilege entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['resConsumable'] = entity.resConsumable;
	data['userConsumable'] = entity.userConsumable;
	data['type'] = entity.type;
	data['remainTime'] = entity.remainTime;
	return data;
}
