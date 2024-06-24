import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/home/models/recommanded_model.dart';
import 'package:music_app/features/home/models/singer_model.dart';


part 'next_previous_song_state.dart';

class NextPreviousSongCubit extends Cubit<NextPreviousSongState> {
  NextPreviousSongCubit() : super(NextPreviousSongInitial());

  RecommandedModel? songDataRecommanded;
  SingerModel? songDataRecently;
  getSongData(songDataModel, isRecently) {
    if (isRecently) {
      songDataRecently = songDataModel;
      emit(NowSongRecentlyState());
      return songDataRecently;
    } else {
      songDataRecommanded = songDataModel;
      emit(NowSongRecommandedState());
      return songDataRecommanded;
    }
  }

  // getNextSongData( songDataModel) {
  //   SongDataModel? songData;
  //   int index = songDataModel.index;
  //   index++;
  //   if (songDataModel.isRecently) {
  //     if (index == SingerList.singersList.length) {
  //       index = 0;
  //     }
  //     //  songData = SingerList.singersList[index];
  //   } else {
  //     if (index == RecommandedList.recommandedList.length) {
  //       index = 0;
  //     }
  //     //  songData = ;
  //   }

    // return songData;
   //}
}
