// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:music/models/automation/song_list_res_entity.dart';
import 'package:music/generated/json/song_list_res_entity_helper.dart';
import 'package:music/models/automation/personalized_response_entity.dart';
import 'package:music/generated/json/personalized_response_entity_helper.dart';
import 'package:music/models/automation/personalized_newsong_entity.dart';
import 'package:music/generated/json/personalized_newsong_entity_helper.dart';
import 'package:music/models/automation/tag_response_entity.dart';
import 'package:music/generated/json/tag_response_entity_helper.dart';
import 'package:music/models/automation/fine_list_response_entity.dart';
import 'package:music/generated/json/fine_list_response_entity_helper.dart';
import 'package:music/models/automation/personalized_privatecontent_entity.dart';
import 'package:music/generated/json/personalized_privatecontent_entity_helper.dart';
import 'package:music/models/automation/fine_song_list_response_entity.dart';
import 'package:music/generated/json/fine_song_list_response_entity_helper.dart';
import 'package:music/models/automation/top_mv_entity.dart';
import 'package:music/generated/json/top_mv_entity_helper.dart';
import 'package:music/models/automation/playlist_detail_response_entity.dart';
import 'package:music/generated/json/playlist_detail_response_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
		switch (type) {
			case SongListResEntity:
				return songListResEntityFromJson(data as SongListResEntity, json) as T;
			case SongListResPlaylists:
				return songListResPlaylistsFromJson(data as SongListResPlaylists, json) as T;
			case SongListResPlaylistsCreator:
				return songListResPlaylistsCreatorFromJson(data as SongListResPlaylistsCreator, json) as T;
			case SongListResPlaylistsCreatorAvatarDetail:
				return songListResPlaylistsCreatorAvatarDetailFromJson(data as SongListResPlaylistsCreatorAvatarDetail, json) as T;
			case SongListResPlaylistsSubscribers:
				return songListResPlaylistsSubscribersFromJson(data as SongListResPlaylistsSubscribers, json) as T;
			case PersonalizedResponseEntity:
				return personalizedResponseEntityFromJson(data as PersonalizedResponseEntity, json) as T;
			case PersonalizedResponseResult:
				return personalizedResponseResultFromJson(data as PersonalizedResponseResult, json) as T;
			case PersonalizedNewsongEntity:
				return personalizedNewsongEntityFromJson(data as PersonalizedNewsongEntity, json) as T;
			case PersonalizedNewsongResult:
				return personalizedNewsongResultFromJson(data as PersonalizedNewsongResult, json) as T;
			case PersonalizedNewsongResultSong:
				return personalizedNewsongResultSongFromJson(data as PersonalizedNewsongResultSong, json) as T;
			case PersonalizedNewsongResultSongArtists:
				return personalizedNewsongResultSongArtistsFromJson(data as PersonalizedNewsongResultSongArtists, json) as T;
			case PersonalizedNewsongResultSongAlbum:
				return personalizedNewsongResultSongAlbumFromJson(data as PersonalizedNewsongResultSongAlbum, json) as T;
			case PersonalizedNewsongResultSongAlbumArtist:
				return personalizedNewsongResultSongAlbumArtistFromJson(data as PersonalizedNewsongResultSongAlbumArtist, json) as T;
			case PersonalizedNewsongResultSongAlbumArtists:
				return personalizedNewsongResultSongAlbumArtistsFromJson(data as PersonalizedNewsongResultSongAlbumArtists, json) as T;
			case PersonalizedNewsongResultSongBMusic:
				return personalizedNewsongResultSongBMusicFromJson(data as PersonalizedNewsongResultSongBMusic, json) as T;
			case PersonalizedNewsongResultSongHMusic:
				return personalizedNewsongResultSongHMusicFromJson(data as PersonalizedNewsongResultSongHMusic, json) as T;
			case PersonalizedNewsongResultSongMMusic:
				return personalizedNewsongResultSongMMusicFromJson(data as PersonalizedNewsongResultSongMMusic, json) as T;
			case PersonalizedNewsongResultSongLMusic:
				return personalizedNewsongResultSongLMusicFromJson(data as PersonalizedNewsongResultSongLMusic, json) as T;
			case PersonalizedNewsongResultSongPrivilege:
				return personalizedNewsongResultSongPrivilegeFromJson(data as PersonalizedNewsongResultSongPrivilege, json) as T;
			case PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege:
				return personalizedNewsongResultSongPrivilegeFreeTrialPrivilegeFromJson(data as PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege, json) as T;
			case PersonalizedNewsongResultSongPrivilegeChargeInfoList:
				return personalizedNewsongResultSongPrivilegeChargeInfoListFromJson(data as PersonalizedNewsongResultSongPrivilegeChargeInfoList, json) as T;
			case TagResponseEntity:
				return tagResponseEntityFromJson(data as TagResponseEntity, json) as T;
			case TagResponseTags:
				return tagResponseTagsFromJson(data as TagResponseTags, json) as T;
			case TagResponseTagsPlaylistTag:
				return tagResponseTagsPlaylistTagFromJson(data as TagResponseTagsPlaylistTag, json) as T;
			case FineListResponseEntity:
				return fineListResponseEntityFromJson(data as FineListResponseEntity, json) as T;
			case FineListResponsePlaylists:
				return fineListResponsePlaylistsFromJson(data as FineListResponsePlaylists, json) as T;
			case FineListResponsePlaylistsCreator:
				return fineListResponsePlaylistsCreatorFromJson(data as FineListResponsePlaylistsCreator, json) as T;
			case FineListResponsePlaylistsCreatorAvatarDetail:
				return fineListResponsePlaylistsCreatorAvatarDetailFromJson(data as FineListResponsePlaylistsCreatorAvatarDetail, json) as T;
			case FineListResponsePlaylistsSubscribers:
				return fineListResponsePlaylistsSubscribersFromJson(data as FineListResponsePlaylistsSubscribers, json) as T;
			case PersonalizedPrivatecontentEntity:
				return personalizedPrivatecontentEntityFromJson(data as PersonalizedPrivatecontentEntity, json) as T;
			case PersonalizedPrivatecontentResult:
				return personalizedPrivatecontentResultFromJson(data as PersonalizedPrivatecontentResult, json) as T;
			case FineSongListResponseEntity:
				return fineSongListResponseEntityFromJson(data as FineSongListResponseEntity, json) as T;
			case FineSongListResponsePlaylists:
				return fineSongListResponsePlaylistsFromJson(data as FineSongListResponsePlaylists, json) as T;
			case FineSongListResponsePlaylistsCreator:
				return fineSongListResponsePlaylistsCreatorFromJson(data as FineSongListResponsePlaylistsCreator, json) as T;
			case FineSongListResponsePlaylistsCreatorAvatarDetail:
				return fineSongListResponsePlaylistsCreatorAvatarDetailFromJson(data as FineSongListResponsePlaylistsCreatorAvatarDetail, json) as T;
			case FineSongListResponsePlaylistsSubscribers:
				return fineSongListResponsePlaylistsSubscribersFromJson(data as FineSongListResponsePlaylistsSubscribers, json) as T;
			case TopMvEntity:
				return topMvEntityFromJson(data as TopMvEntity, json) as T;
			case TopMvData:
				return topMvDataFromJson(data as TopMvData, json) as T;
			case TopMvDataMv:
				return topMvDataMvFromJson(data as TopMvDataMv, json) as T;
			case TopMvDataMvArtists:
				return topMvDataMvArtistsFromJson(data as TopMvDataMvArtists, json) as T;
			case TopMvDataMvVideos:
				return topMvDataMvVideosFromJson(data as TopMvDataMvVideos, json) as T;
			case TopMvDataMvVideosTagSign:
				return topMvDataMvVideosTagSignFromJson(data as TopMvDataMvVideosTagSign, json) as T;
			case TopMvDataArtists:
				return topMvDataArtistsFromJson(data as TopMvDataArtists, json) as T;
			case PlaylistDetailResponseEntity:
				return playlistDetailResponseEntityFromJson(data as PlaylistDetailResponseEntity, json) as T;
			case PlaylistDetailResponsePlaylist:
				return playlistDetailResponsePlaylistFromJson(data as PlaylistDetailResponsePlaylist, json) as T;
			case PlaylistDetailResponsePlaylistSubscribers:
				return playlistDetailResponsePlaylistSubscribersFromJson(data as PlaylistDetailResponsePlaylistSubscribers, json) as T;
			case PlaylistDetailResponsePlaylistCreator:
				return playlistDetailResponsePlaylistCreatorFromJson(data as PlaylistDetailResponsePlaylistCreator, json) as T;
			case PlaylistDetailResponsePlaylistCreatorAvatarDetail:
				return playlistDetailResponsePlaylistCreatorAvatarDetailFromJson(data as PlaylistDetailResponsePlaylistCreatorAvatarDetail, json) as T;
			case PlaylistDetailResponsePlaylistTracks:
				return playlistDetailResponsePlaylistTracksFromJson(data as PlaylistDetailResponsePlaylistTracks, json) as T;
			case PlaylistDetailResponsePlaylistTracksAr:
				return playlistDetailResponsePlaylistTracksArFromJson(data as PlaylistDetailResponsePlaylistTracksAr, json) as T;
			case PlaylistDetailResponsePlaylistTracksAl:
				return playlistDetailResponsePlaylistTracksAlFromJson(data as PlaylistDetailResponsePlaylistTracksAl, json) as T;
			case PlaylistDetailResponsePlaylistTracksH:
				return playlistDetailResponsePlaylistTracksHFromJson(data as PlaylistDetailResponsePlaylistTracksH, json) as T;
			case PlaylistDetailResponsePlaylistTracksM:
				return playlistDetailResponsePlaylistTracksMFromJson(data as PlaylistDetailResponsePlaylistTracksM, json) as T;
			case PlaylistDetailResponsePlaylistTracksL:
				return playlistDetailResponsePlaylistTracksLFromJson(data as PlaylistDetailResponsePlaylistTracksL, json) as T;
			case PlaylistDetailResponsePlaylistTrackIds:
				return playlistDetailResponsePlaylistTrackIdsFromJson(data as PlaylistDetailResponsePlaylistTrackIds, json) as T;
			case PlaylistDetailResponsePrivileges:
				return playlistDetailResponsePrivilegesFromJson(data as PlaylistDetailResponsePrivileges, json) as T;
			case PlaylistDetailResponsePrivilegesFreeTrialPrivilege:
				return playlistDetailResponsePrivilegesFreeTrialPrivilegeFromJson(data as PlaylistDetailResponsePrivilegesFreeTrialPrivilege, json) as T;
			case PlaylistDetailResponsePrivilegesChargeInfoList:
				return playlistDetailResponsePrivilegesChargeInfoListFromJson(data as PlaylistDetailResponsePrivilegesChargeInfoList, json) as T;    }
		return data as T;
	}

  static _getToJson<T>(Type type, data) {
		switch (type) {
			case SongListResEntity:
				return songListResEntityToJson(data as SongListResEntity);
			case SongListResPlaylists:
				return songListResPlaylistsToJson(data as SongListResPlaylists);
			case SongListResPlaylistsCreator:
				return songListResPlaylistsCreatorToJson(data as SongListResPlaylistsCreator);
			case SongListResPlaylistsCreatorAvatarDetail:
				return songListResPlaylistsCreatorAvatarDetailToJson(data as SongListResPlaylistsCreatorAvatarDetail);
			case SongListResPlaylistsSubscribers:
				return songListResPlaylistsSubscribersToJson(data as SongListResPlaylistsSubscribers);
			case PersonalizedResponseEntity:
				return personalizedResponseEntityToJson(data as PersonalizedResponseEntity);
			case PersonalizedResponseResult:
				return personalizedResponseResultToJson(data as PersonalizedResponseResult);
			case PersonalizedNewsongEntity:
				return personalizedNewsongEntityToJson(data as PersonalizedNewsongEntity);
			case PersonalizedNewsongResult:
				return personalizedNewsongResultToJson(data as PersonalizedNewsongResult);
			case PersonalizedNewsongResultSong:
				return personalizedNewsongResultSongToJson(data as PersonalizedNewsongResultSong);
			case PersonalizedNewsongResultSongArtists:
				return personalizedNewsongResultSongArtistsToJson(data as PersonalizedNewsongResultSongArtists);
			case PersonalizedNewsongResultSongAlbum:
				return personalizedNewsongResultSongAlbumToJson(data as PersonalizedNewsongResultSongAlbum);
			case PersonalizedNewsongResultSongAlbumArtist:
				return personalizedNewsongResultSongAlbumArtistToJson(data as PersonalizedNewsongResultSongAlbumArtist);
			case PersonalizedNewsongResultSongAlbumArtists:
				return personalizedNewsongResultSongAlbumArtistsToJson(data as PersonalizedNewsongResultSongAlbumArtists);
			case PersonalizedNewsongResultSongBMusic:
				return personalizedNewsongResultSongBMusicToJson(data as PersonalizedNewsongResultSongBMusic);
			case PersonalizedNewsongResultSongHMusic:
				return personalizedNewsongResultSongHMusicToJson(data as PersonalizedNewsongResultSongHMusic);
			case PersonalizedNewsongResultSongMMusic:
				return personalizedNewsongResultSongMMusicToJson(data as PersonalizedNewsongResultSongMMusic);
			case PersonalizedNewsongResultSongLMusic:
				return personalizedNewsongResultSongLMusicToJson(data as PersonalizedNewsongResultSongLMusic);
			case PersonalizedNewsongResultSongPrivilege:
				return personalizedNewsongResultSongPrivilegeToJson(data as PersonalizedNewsongResultSongPrivilege);
			case PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege:
				return personalizedNewsongResultSongPrivilegeFreeTrialPrivilegeToJson(data as PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege);
			case PersonalizedNewsongResultSongPrivilegeChargeInfoList:
				return personalizedNewsongResultSongPrivilegeChargeInfoListToJson(data as PersonalizedNewsongResultSongPrivilegeChargeInfoList);
			case TagResponseEntity:
				return tagResponseEntityToJson(data as TagResponseEntity);
			case TagResponseTags:
				return tagResponseTagsToJson(data as TagResponseTags);
			case TagResponseTagsPlaylistTag:
				return tagResponseTagsPlaylistTagToJson(data as TagResponseTagsPlaylistTag);
			case FineListResponseEntity:
				return fineListResponseEntityToJson(data as FineListResponseEntity);
			case FineListResponsePlaylists:
				return fineListResponsePlaylistsToJson(data as FineListResponsePlaylists);
			case FineListResponsePlaylistsCreator:
				return fineListResponsePlaylistsCreatorToJson(data as FineListResponsePlaylistsCreator);
			case FineListResponsePlaylistsCreatorAvatarDetail:
				return fineListResponsePlaylistsCreatorAvatarDetailToJson(data as FineListResponsePlaylistsCreatorAvatarDetail);
			case FineListResponsePlaylistsSubscribers:
				return fineListResponsePlaylistsSubscribersToJson(data as FineListResponsePlaylistsSubscribers);
			case PersonalizedPrivatecontentEntity:
				return personalizedPrivatecontentEntityToJson(data as PersonalizedPrivatecontentEntity);
			case PersonalizedPrivatecontentResult:
				return personalizedPrivatecontentResultToJson(data as PersonalizedPrivatecontentResult);
			case FineSongListResponseEntity:
				return fineSongListResponseEntityToJson(data as FineSongListResponseEntity);
			case FineSongListResponsePlaylists:
				return fineSongListResponsePlaylistsToJson(data as FineSongListResponsePlaylists);
			case FineSongListResponsePlaylistsCreator:
				return fineSongListResponsePlaylistsCreatorToJson(data as FineSongListResponsePlaylistsCreator);
			case FineSongListResponsePlaylistsCreatorAvatarDetail:
				return fineSongListResponsePlaylistsCreatorAvatarDetailToJson(data as FineSongListResponsePlaylistsCreatorAvatarDetail);
			case FineSongListResponsePlaylistsSubscribers:
				return fineSongListResponsePlaylistsSubscribersToJson(data as FineSongListResponsePlaylistsSubscribers);
			case TopMvEntity:
				return topMvEntityToJson(data as TopMvEntity);
			case TopMvData:
				return topMvDataToJson(data as TopMvData);
			case TopMvDataMv:
				return topMvDataMvToJson(data as TopMvDataMv);
			case TopMvDataMvArtists:
				return topMvDataMvArtistsToJson(data as TopMvDataMvArtists);
			case TopMvDataMvVideos:
				return topMvDataMvVideosToJson(data as TopMvDataMvVideos);
			case TopMvDataMvVideosTagSign:
				return topMvDataMvVideosTagSignToJson(data as TopMvDataMvVideosTagSign);
			case TopMvDataArtists:
				return topMvDataArtistsToJson(data as TopMvDataArtists);
			case PlaylistDetailResponseEntity:
				return playlistDetailResponseEntityToJson(data as PlaylistDetailResponseEntity);
			case PlaylistDetailResponsePlaylist:
				return playlistDetailResponsePlaylistToJson(data as PlaylistDetailResponsePlaylist);
			case PlaylistDetailResponsePlaylistSubscribers:
				return playlistDetailResponsePlaylistSubscribersToJson(data as PlaylistDetailResponsePlaylistSubscribers);
			case PlaylistDetailResponsePlaylistCreator:
				return playlistDetailResponsePlaylistCreatorToJson(data as PlaylistDetailResponsePlaylistCreator);
			case PlaylistDetailResponsePlaylistCreatorAvatarDetail:
				return playlistDetailResponsePlaylistCreatorAvatarDetailToJson(data as PlaylistDetailResponsePlaylistCreatorAvatarDetail);
			case PlaylistDetailResponsePlaylistTracks:
				return playlistDetailResponsePlaylistTracksToJson(data as PlaylistDetailResponsePlaylistTracks);
			case PlaylistDetailResponsePlaylistTracksAr:
				return playlistDetailResponsePlaylistTracksArToJson(data as PlaylistDetailResponsePlaylistTracksAr);
			case PlaylistDetailResponsePlaylistTracksAl:
				return playlistDetailResponsePlaylistTracksAlToJson(data as PlaylistDetailResponsePlaylistTracksAl);
			case PlaylistDetailResponsePlaylistTracksH:
				return playlistDetailResponsePlaylistTracksHToJson(data as PlaylistDetailResponsePlaylistTracksH);
			case PlaylistDetailResponsePlaylistTracksM:
				return playlistDetailResponsePlaylistTracksMToJson(data as PlaylistDetailResponsePlaylistTracksM);
			case PlaylistDetailResponsePlaylistTracksL:
				return playlistDetailResponsePlaylistTracksLToJson(data as PlaylistDetailResponsePlaylistTracksL);
			case PlaylistDetailResponsePlaylistTrackIds:
				return playlistDetailResponsePlaylistTrackIdsToJson(data as PlaylistDetailResponsePlaylistTrackIds);
			case PlaylistDetailResponsePrivileges:
				return playlistDetailResponsePrivilegesToJson(data as PlaylistDetailResponsePrivileges);
			case PlaylistDetailResponsePrivilegesFreeTrialPrivilege:
				return playlistDetailResponsePrivilegesFreeTrialPrivilegeToJson(data as PlaylistDetailResponsePrivilegesFreeTrialPrivilege);
			case PlaylistDetailResponsePrivilegesChargeInfoList:
				return playlistDetailResponsePrivilegesChargeInfoListToJson(data as PlaylistDetailResponsePrivilegesChargeInfoList);
			}
			return data as T;
		}
  //Go back to a single instance by type
	static _fromJsonSingle<M>( json) {
		String type = M.toString();
		if(type == (SongListResEntity).toString()){
			return SongListResEntity().fromJson(json);
		}
		if(type == (SongListResPlaylists).toString()){
			return SongListResPlaylists().fromJson(json);
		}
		if(type == (SongListResPlaylistsCreator).toString()){
			return SongListResPlaylistsCreator().fromJson(json);
		}
		if(type == (SongListResPlaylistsCreatorAvatarDetail).toString()){
			return SongListResPlaylistsCreatorAvatarDetail().fromJson(json);
		}
		if(type == (SongListResPlaylistsSubscribers).toString()){
			return SongListResPlaylistsSubscribers().fromJson(json);
		}
		if(type == (PersonalizedResponseEntity).toString()){
			return PersonalizedResponseEntity().fromJson(json);
		}
		if(type == (PersonalizedResponseResult).toString()){
			return PersonalizedResponseResult().fromJson(json);
		}
		if(type == (PersonalizedNewsongEntity).toString()){
			return PersonalizedNewsongEntity().fromJson(json);
		}
		if(type == (PersonalizedNewsongResult).toString()){
			return PersonalizedNewsongResult().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSong).toString()){
			return PersonalizedNewsongResultSong().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSongArtists).toString()){
			return PersonalizedNewsongResultSongArtists().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSongAlbum).toString()){
			return PersonalizedNewsongResultSongAlbum().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSongAlbumArtist).toString()){
			return PersonalizedNewsongResultSongAlbumArtist().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSongAlbumArtists).toString()){
			return PersonalizedNewsongResultSongAlbumArtists().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSongBMusic).toString()){
			return PersonalizedNewsongResultSongBMusic().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSongHMusic).toString()){
			return PersonalizedNewsongResultSongHMusic().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSongMMusic).toString()){
			return PersonalizedNewsongResultSongMMusic().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSongLMusic).toString()){
			return PersonalizedNewsongResultSongLMusic().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSongPrivilege).toString()){
			return PersonalizedNewsongResultSongPrivilege().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege).toString()){
			return PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege().fromJson(json);
		}
		if(type == (PersonalizedNewsongResultSongPrivilegeChargeInfoList).toString()){
			return PersonalizedNewsongResultSongPrivilegeChargeInfoList().fromJson(json);
		}
		if(type == (TagResponseEntity).toString()){
			return TagResponseEntity().fromJson(json);
		}
		if(type == (TagResponseTags).toString()){
			return TagResponseTags().fromJson(json);
		}
		if(type == (TagResponseTagsPlaylistTag).toString()){
			return TagResponseTagsPlaylistTag().fromJson(json);
		}
		if(type == (FineListResponseEntity).toString()){
			return FineListResponseEntity().fromJson(json);
		}
		if(type == (FineListResponsePlaylists).toString()){
			return FineListResponsePlaylists().fromJson(json);
		}
		if(type == (FineListResponsePlaylistsCreator).toString()){
			return FineListResponsePlaylistsCreator().fromJson(json);
		}
		if(type == (FineListResponsePlaylistsCreatorAvatarDetail).toString()){
			return FineListResponsePlaylistsCreatorAvatarDetail().fromJson(json);
		}
		if(type == (FineListResponsePlaylistsSubscribers).toString()){
			return FineListResponsePlaylistsSubscribers().fromJson(json);
		}
		if(type == (PersonalizedPrivatecontentEntity).toString()){
			return PersonalizedPrivatecontentEntity().fromJson(json);
		}
		if(type == (PersonalizedPrivatecontentResult).toString()){
			return PersonalizedPrivatecontentResult().fromJson(json);
		}
		if(type == (FineSongListResponseEntity).toString()){
			return FineSongListResponseEntity().fromJson(json);
		}
		if(type == (FineSongListResponsePlaylists).toString()){
			return FineSongListResponsePlaylists().fromJson(json);
		}
		if(type == (FineSongListResponsePlaylistsCreator).toString()){
			return FineSongListResponsePlaylistsCreator().fromJson(json);
		}
		if(type == (FineSongListResponsePlaylistsCreatorAvatarDetail).toString()){
			return FineSongListResponsePlaylistsCreatorAvatarDetail().fromJson(json);
		}
		if(type == (FineSongListResponsePlaylistsSubscribers).toString()){
			return FineSongListResponsePlaylistsSubscribers().fromJson(json);
		}
		if(type == (TopMvEntity).toString()){
			return TopMvEntity().fromJson(json);
		}
		if(type == (TopMvData).toString()){
			return TopMvData().fromJson(json);
		}
		if(type == (TopMvDataMv).toString()){
			return TopMvDataMv().fromJson(json);
		}
		if(type == (TopMvDataMvArtists).toString()){
			return TopMvDataMvArtists().fromJson(json);
		}
		if(type == (TopMvDataMvVideos).toString()){
			return TopMvDataMvVideos().fromJson(json);
		}
		if(type == (TopMvDataMvVideosTagSign).toString()){
			return TopMvDataMvVideosTagSign().fromJson(json);
		}
		if(type == (TopMvDataArtists).toString()){
			return TopMvDataArtists().fromJson(json);
		}
		if(type == (PlaylistDetailResponseEntity).toString()){
			return PlaylistDetailResponseEntity().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePlaylist).toString()){
			return PlaylistDetailResponsePlaylist().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePlaylistSubscribers).toString()){
			return PlaylistDetailResponsePlaylistSubscribers().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePlaylistCreator).toString()){
			return PlaylistDetailResponsePlaylistCreator().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePlaylistCreatorAvatarDetail).toString()){
			return PlaylistDetailResponsePlaylistCreatorAvatarDetail().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePlaylistTracks).toString()){
			return PlaylistDetailResponsePlaylistTracks().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePlaylistTracksAr).toString()){
			return PlaylistDetailResponsePlaylistTracksAr().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePlaylistTracksAl).toString()){
			return PlaylistDetailResponsePlaylistTracksAl().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePlaylistTracksH).toString()){
			return PlaylistDetailResponsePlaylistTracksH().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePlaylistTracksM).toString()){
			return PlaylistDetailResponsePlaylistTracksM().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePlaylistTracksL).toString()){
			return PlaylistDetailResponsePlaylistTracksL().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePlaylistTrackIds).toString()){
			return PlaylistDetailResponsePlaylistTrackIds().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePrivileges).toString()){
			return PlaylistDetailResponsePrivileges().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePrivilegesFreeTrialPrivilege).toString()){
			return PlaylistDetailResponsePrivilegesFreeTrialPrivilege().fromJson(json);
		}
		if(type == (PlaylistDetailResponsePrivilegesChargeInfoList).toString()){
			return PlaylistDetailResponsePrivilegesChargeInfoList().fromJson(json);
		}

		return null;
	}

  //list is returned by type
	static M _getListChildType<M>(List data) {
		if(<SongListResEntity>[] is M){
			return data.map<SongListResEntity>((e) => SongListResEntity().fromJson(e)).toList() as M;
		}
		if(<SongListResPlaylists>[] is M){
			return data.map<SongListResPlaylists>((e) => SongListResPlaylists().fromJson(e)).toList() as M;
		}
		if(<SongListResPlaylistsCreator>[] is M){
			return data.map<SongListResPlaylistsCreator>((e) => SongListResPlaylistsCreator().fromJson(e)).toList() as M;
		}
		if(<SongListResPlaylistsCreatorAvatarDetail>[] is M){
			return data.map<SongListResPlaylistsCreatorAvatarDetail>((e) => SongListResPlaylistsCreatorAvatarDetail().fromJson(e)).toList() as M;
		}
		if(<SongListResPlaylistsSubscribers>[] is M){
			return data.map<SongListResPlaylistsSubscribers>((e) => SongListResPlaylistsSubscribers().fromJson(e)).toList() as M;
		}
		if(<PersonalizedResponseEntity>[] is M){
			return data.map<PersonalizedResponseEntity>((e) => PersonalizedResponseEntity().fromJson(e)).toList() as M;
		}
		if(<PersonalizedResponseResult>[] is M){
			return data.map<PersonalizedResponseResult>((e) => PersonalizedResponseResult().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongEntity>[] is M){
			return data.map<PersonalizedNewsongEntity>((e) => PersonalizedNewsongEntity().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResult>[] is M){
			return data.map<PersonalizedNewsongResult>((e) => PersonalizedNewsongResult().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSong>[] is M){
			return data.map<PersonalizedNewsongResultSong>((e) => PersonalizedNewsongResultSong().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSongArtists>[] is M){
			return data.map<PersonalizedNewsongResultSongArtists>((e) => PersonalizedNewsongResultSongArtists().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSongAlbum>[] is M){
			return data.map<PersonalizedNewsongResultSongAlbum>((e) => PersonalizedNewsongResultSongAlbum().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSongAlbumArtist>[] is M){
			return data.map<PersonalizedNewsongResultSongAlbumArtist>((e) => PersonalizedNewsongResultSongAlbumArtist().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSongAlbumArtists>[] is M){
			return data.map<PersonalizedNewsongResultSongAlbumArtists>((e) => PersonalizedNewsongResultSongAlbumArtists().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSongBMusic>[] is M){
			return data.map<PersonalizedNewsongResultSongBMusic>((e) => PersonalizedNewsongResultSongBMusic().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSongHMusic>[] is M){
			return data.map<PersonalizedNewsongResultSongHMusic>((e) => PersonalizedNewsongResultSongHMusic().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSongMMusic>[] is M){
			return data.map<PersonalizedNewsongResultSongMMusic>((e) => PersonalizedNewsongResultSongMMusic().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSongLMusic>[] is M){
			return data.map<PersonalizedNewsongResultSongLMusic>((e) => PersonalizedNewsongResultSongLMusic().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSongPrivilege>[] is M){
			return data.map<PersonalizedNewsongResultSongPrivilege>((e) => PersonalizedNewsongResultSongPrivilege().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege>[] is M){
			return data.map<PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege>((e) => PersonalizedNewsongResultSongPrivilegeFreeTrialPrivilege().fromJson(e)).toList() as M;
		}
		if(<PersonalizedNewsongResultSongPrivilegeChargeInfoList>[] is M){
			return data.map<PersonalizedNewsongResultSongPrivilegeChargeInfoList>((e) => PersonalizedNewsongResultSongPrivilegeChargeInfoList().fromJson(e)).toList() as M;
		}
		if(<TagResponseEntity>[] is M){
			return data.map<TagResponseEntity>((e) => TagResponseEntity().fromJson(e)).toList() as M;
		}
		if(<TagResponseTags>[] is M){
			return data.map<TagResponseTags>((e) => TagResponseTags().fromJson(e)).toList() as M;
		}
		if(<TagResponseTagsPlaylistTag>[] is M){
			return data.map<TagResponseTagsPlaylistTag>((e) => TagResponseTagsPlaylistTag().fromJson(e)).toList() as M;
		}
		if(<FineListResponseEntity>[] is M){
			return data.map<FineListResponseEntity>((e) => FineListResponseEntity().fromJson(e)).toList() as M;
		}
		if(<FineListResponsePlaylists>[] is M){
			return data.map<FineListResponsePlaylists>((e) => FineListResponsePlaylists().fromJson(e)).toList() as M;
		}
		if(<FineListResponsePlaylistsCreator>[] is M){
			return data.map<FineListResponsePlaylistsCreator>((e) => FineListResponsePlaylistsCreator().fromJson(e)).toList() as M;
		}
		if(<FineListResponsePlaylistsCreatorAvatarDetail>[] is M){
			return data.map<FineListResponsePlaylistsCreatorAvatarDetail>((e) => FineListResponsePlaylistsCreatorAvatarDetail().fromJson(e)).toList() as M;
		}
		if(<FineListResponsePlaylistsSubscribers>[] is M){
			return data.map<FineListResponsePlaylistsSubscribers>((e) => FineListResponsePlaylistsSubscribers().fromJson(e)).toList() as M;
		}
		if(<PersonalizedPrivatecontentEntity>[] is M){
			return data.map<PersonalizedPrivatecontentEntity>((e) => PersonalizedPrivatecontentEntity().fromJson(e)).toList() as M;
		}
		if(<PersonalizedPrivatecontentResult>[] is M){
			return data.map<PersonalizedPrivatecontentResult>((e) => PersonalizedPrivatecontentResult().fromJson(e)).toList() as M;
		}
		if(<FineSongListResponseEntity>[] is M){
			return data.map<FineSongListResponseEntity>((e) => FineSongListResponseEntity().fromJson(e)).toList() as M;
		}
		if(<FineSongListResponsePlaylists>[] is M){
			return data.map<FineSongListResponsePlaylists>((e) => FineSongListResponsePlaylists().fromJson(e)).toList() as M;
		}
		if(<FineSongListResponsePlaylistsCreator>[] is M){
			return data.map<FineSongListResponsePlaylistsCreator>((e) => FineSongListResponsePlaylistsCreator().fromJson(e)).toList() as M;
		}
		if(<FineSongListResponsePlaylistsCreatorAvatarDetail>[] is M){
			return data.map<FineSongListResponsePlaylistsCreatorAvatarDetail>((e) => FineSongListResponsePlaylistsCreatorAvatarDetail().fromJson(e)).toList() as M;
		}
		if(<FineSongListResponsePlaylistsSubscribers>[] is M){
			return data.map<FineSongListResponsePlaylistsSubscribers>((e) => FineSongListResponsePlaylistsSubscribers().fromJson(e)).toList() as M;
		}
		if(<TopMvEntity>[] is M){
			return data.map<TopMvEntity>((e) => TopMvEntity().fromJson(e)).toList() as M;
		}
		if(<TopMvData>[] is M){
			return data.map<TopMvData>((e) => TopMvData().fromJson(e)).toList() as M;
		}
		if(<TopMvDataMv>[] is M){
			return data.map<TopMvDataMv>((e) => TopMvDataMv().fromJson(e)).toList() as M;
		}
		if(<TopMvDataMvArtists>[] is M){
			return data.map<TopMvDataMvArtists>((e) => TopMvDataMvArtists().fromJson(e)).toList() as M;
		}
		if(<TopMvDataMvVideos>[] is M){
			return data.map<TopMvDataMvVideos>((e) => TopMvDataMvVideos().fromJson(e)).toList() as M;
		}
		if(<TopMvDataMvVideosTagSign>[] is M){
			return data.map<TopMvDataMvVideosTagSign>((e) => TopMvDataMvVideosTagSign().fromJson(e)).toList() as M;
		}
		if(<TopMvDataArtists>[] is M){
			return data.map<TopMvDataArtists>((e) => TopMvDataArtists().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponseEntity>[] is M){
			return data.map<PlaylistDetailResponseEntity>((e) => PlaylistDetailResponseEntity().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePlaylist>[] is M){
			return data.map<PlaylistDetailResponsePlaylist>((e) => PlaylistDetailResponsePlaylist().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePlaylistSubscribers>[] is M){
			return data.map<PlaylistDetailResponsePlaylistSubscribers>((e) => PlaylistDetailResponsePlaylistSubscribers().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePlaylistCreator>[] is M){
			return data.map<PlaylistDetailResponsePlaylistCreator>((e) => PlaylistDetailResponsePlaylistCreator().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePlaylistCreatorAvatarDetail>[] is M){
			return data.map<PlaylistDetailResponsePlaylistCreatorAvatarDetail>((e) => PlaylistDetailResponsePlaylistCreatorAvatarDetail().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePlaylistTracks>[] is M){
			return data.map<PlaylistDetailResponsePlaylistTracks>((e) => PlaylistDetailResponsePlaylistTracks().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePlaylistTracksAr>[] is M){
			return data.map<PlaylistDetailResponsePlaylistTracksAr>((e) => PlaylistDetailResponsePlaylistTracksAr().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePlaylistTracksAl>[] is M){
			return data.map<PlaylistDetailResponsePlaylistTracksAl>((e) => PlaylistDetailResponsePlaylistTracksAl().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePlaylistTracksH>[] is M){
			return data.map<PlaylistDetailResponsePlaylistTracksH>((e) => PlaylistDetailResponsePlaylistTracksH().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePlaylistTracksM>[] is M){
			return data.map<PlaylistDetailResponsePlaylistTracksM>((e) => PlaylistDetailResponsePlaylistTracksM().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePlaylistTracksL>[] is M){
			return data.map<PlaylistDetailResponsePlaylistTracksL>((e) => PlaylistDetailResponsePlaylistTracksL().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePlaylistTrackIds>[] is M){
			return data.map<PlaylistDetailResponsePlaylistTrackIds>((e) => PlaylistDetailResponsePlaylistTrackIds().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePrivileges>[] is M){
			return data.map<PlaylistDetailResponsePrivileges>((e) => PlaylistDetailResponsePrivileges().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePrivilegesFreeTrialPrivilege>[] is M){
			return data.map<PlaylistDetailResponsePrivilegesFreeTrialPrivilege>((e) => PlaylistDetailResponsePrivilegesFreeTrialPrivilege().fromJson(e)).toList() as M;
		}
		if(<PlaylistDetailResponsePrivilegesChargeInfoList>[] is M){
			return data.map<PlaylistDetailResponsePrivilegesChargeInfoList>((e) => PlaylistDetailResponsePrivilegesChargeInfoList().fromJson(e)).toList() as M;
		}

		throw Exception("not found");
	}

  static M fromJsonAsT<M>(json) {
		if (json is List) {
			return _getListChildType<M>(json);
		} else {
			return _fromJsonSingle<M>(json) as M;
		}
	}
}
