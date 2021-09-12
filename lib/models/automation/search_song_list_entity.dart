import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/generated/json/base/json_field.dart';

class SearchSongListEntity with JsonConvert<SearchSongListEntity> {
	SearchSongListResult? result;
	int? code;
}

class SearchSongListResult with JsonConvert<SearchSongListResult> {
	List<SearchSongListResultPlaylists>? playlists;
	bool? hasMore;
	int? playlistCount;
}

class SearchSongListResultPlaylists with JsonConvert<SearchSongListResultPlaylists> {
	int? id;
	String? name;
	String? coverImgUrl;
	SearchSongListResultPlaylistsCreator? creator;
	bool? subscribed;
	int? trackCount;
	int? userId;
	int? playCount;
	int? bookCount;
	int? specialType;
	dynamic? officialTags;
	String? description;
	bool? highQuality;
	SearchSongListResultPlaylistsTrack? track;
	String? alg;
}

class SearchSongListResultPlaylistsCreator with JsonConvert<SearchSongListResultPlaylistsCreator> {
	String? nickname;
	int? userId;
	int? userType;
	String? avatarUrl;
	int? authStatus;
	dynamic? expertTags;
	dynamic? experts;
}

class SearchSongListResultPlaylistsTrack with JsonConvert<SearchSongListResultPlaylistsTrack> {
	String? name;
	int? id;
	int? position;
	List<dynamic>? alias;
	int? status;
	int? fee;
	int? copyrightId;
	String? disc;
	int? no;
	List<SearchSongListResultPlaylistsTrackArtists>? artists;
	SearchSongListResultPlaylistsTrackAlbum? album;
	bool? starred;
	int? popularity;
	int? score;
	int? starredNum;
	int? duration;
	int? playedNum;
	int? dayPlays;
	int? hearTime;
	dynamic? ringtone;
	dynamic? crbt;
	dynamic? audition;
	String? copyFrom;
	String? commentThreadId;
	dynamic? rtUrl;
	int? ftype;
	List<dynamic>? rtUrls;
	int? copyright;
	SearchSongListResultPlaylistsTrackHMusic? hMusic;
	SearchSongListResultPlaylistsTrackMMusic? mMusic;
	SearchSongListResultPlaylistsTrackLMusic? lMusic;
	SearchSongListResultPlaylistsTrackBMusic? bMusic;
	int? rtype;
	dynamic? rurl;
	int? mvid;
	dynamic? mp3Url;
}

class SearchSongListResultPlaylistsTrackArtists with JsonConvert<SearchSongListResultPlaylistsTrackArtists> {
	String? name;
	int? id;
	int? picId;
	int? img1v1Id;
	String? briefDesc;
	String? picUrl;
	String? img1v1Url;
	int? albumSize;
	List<dynamic>? alias;
	String? trans;
	int? musicSize;
}

class SearchSongListResultPlaylistsTrackAlbum with JsonConvert<SearchSongListResultPlaylistsTrackAlbum> {
	String? name;
	int? id;
	String? type;
	int? size;
	int? picId;
	String? blurPicUrl;
	int? companyId;
	int? pic;
	String? picUrl;
	int? publishTime;
	String? description;
	String? tags;
	dynamic? company;
	String? briefDesc;
	SearchSongListResultPlaylistsTrackAlbumArtist? artist;
	List<dynamic>? songs;
	List<dynamic>? alias;
	int? status;
	int? copyrightId;
	String? commentThreadId;
	List<SearchSongListResultPlaylistsTrackAlbumArtists>? artists;
	@JSONField(name: "picId_str")
	String? picidStr;
}

class SearchSongListResultPlaylistsTrackAlbumArtist with JsonConvert<SearchSongListResultPlaylistsTrackAlbumArtist> {
	String? name;
	int? id;
	int? picId;
	int? img1v1Id;
	String? briefDesc;
	String? picUrl;
	String? img1v1Url;
	int? albumSize;
	List<dynamic>? alias;
	String? trans;
	int? musicSize;
}

class SearchSongListResultPlaylistsTrackAlbumArtists with JsonConvert<SearchSongListResultPlaylistsTrackAlbumArtists> {
	String? name;
	int? id;
	int? picId;
	int? img1v1Id;
	String? briefDesc;
	String? picUrl;
	String? img1v1Url;
	int? albumSize;
	List<dynamic>? alias;
	String? trans;
	int? musicSize;
}

class SearchSongListResultPlaylistsTrackHMusic with JsonConvert<SearchSongListResultPlaylistsTrackHMusic> {
	dynamic? name;
	int? id;
	int? size;
	String? extension;
	int? sr;
	int? dfsId;
	int? bitrate;
	int? playTime;
	int? volumeDelta;
}

class SearchSongListResultPlaylistsTrackMMusic with JsonConvert<SearchSongListResultPlaylistsTrackMMusic> {
	dynamic? name;
	int? id;
	int? size;
	String? extension;
	int? sr;
	int? dfsId;
	int? bitrate;
	int? playTime;
	int? volumeDelta;
}

class SearchSongListResultPlaylistsTrackLMusic with JsonConvert<SearchSongListResultPlaylistsTrackLMusic> {
	dynamic? name;
	int? id;
	int? size;
	String? extension;
	int? sr;
	int? dfsId;
	int? bitrate;
	int? playTime;
	int? volumeDelta;
}

class SearchSongListResultPlaylistsTrackBMusic with JsonConvert<SearchSongListResultPlaylistsTrackBMusic> {
	dynamic? name;
	int? id;
	int? size;
	String? extension;
	int? sr;
	int? dfsId;
	int? bitrate;
	int? playTime;
	int? volumeDelta;
}
