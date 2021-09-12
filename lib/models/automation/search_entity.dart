import 'package:music/generated/json/base/json_convert_content.dart';

class SearchEntity with JsonConvert<SearchEntity> {
	SearchResult? result;
	int? code;
}

class SearchResult with JsonConvert<SearchResult> {
	List<SearchResultSongs>? songs;
	bool? hasMore;
	int? songCount;
}

class SearchResultSongs with JsonConvert<SearchResultSongs> {
	int? id;
	String? name;
	List<SearchResultSongsArtists>? artists;
	SearchResultSongsAlbum? album;
	int? duration;
	int? copyrightId;
	int? status;
	List<dynamic>? alias;
	int? rtype;
	int? ftype;
	int? mvid;
	int? fee;
	dynamic? rUrl;
	int? mark;
}

class SearchResultSongsArtists with JsonConvert<SearchResultSongsArtists> {
	int? id;
	String? name;
	dynamic? picUrl;
	List<dynamic>? alias;
	int? albumSize;
	int? picId;
	String? img1v1Url;
	int? img1v1;
	dynamic? trans;
}

class SearchResultSongsAlbum with JsonConvert<SearchResultSongsAlbum> {
	int? id;
	String? name;
	SearchResultSongsAlbumArtist? artist;
	int? publishTime;
	int? size;
	int? copyrightId;
	int? status;
	int? picId;
	int? mark;
}

class SearchResultSongsAlbumArtist with JsonConvert<SearchResultSongsAlbumArtist> {
	int? id;
	String? name;
	dynamic? picUrl;
	List<dynamic>? alias;
	int? albumSize;
	int? picId;
	String? img1v1Url;
	int? img1v1;
	dynamic? trans;
}
