import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/home/data/recommanded_list.dart';
import 'package:music_app/features/home/data/singer_list.dart';
import 'package:music_app/features/home/models/recommanded_model.dart';
import 'package:music_app/features/home/models/singer_model.dart';

part 'next_previous_song_state.dart';

class NextPreviousSongCubit extends Cubit<NextPreviousSongState> {
  NextPreviousSongCubit() : super(NextPreviousSongInitial());

  RecommandedModel? songDataRecommanded;
  SingerModel? songDataRecently;
  bool isRecent = true;
  getSongData(songDataModel, isRecently) {
    if (isRecently) {
      songDataRecently = songDataModel;
      isRecent = true;
      emit(NowSongRecentlyState());
    } else {
      songDataRecommanded = songDataModel;
      isRecent = false;
      emit(NowSongRecommandedState());
    }
  }

  getNextSongData(songDataModel, bool isRandom) {
    int index = songDataModel.index;
    if (isRandom) {
      if (!isRecent) {
        index = Random().nextInt(RecommandedList.recommandedList.length);
      } else {
        index = Random().nextInt(SingerList.singersList.length);
      }
    } else {
      index++;
    }
    if (songDataModel.isRecently) {
      if (index == SingerList.singersList.length) {
        index = 0;
      }
      emit(NowSongRecentlyState());
      songDataRecently = SingerList.singersList[index];
      return songDataRecently;
    } else {
      if (index == RecommandedList.recommandedList.length) {
        index = 0;
      }
      emit(NowSongRecommandedState());
      songDataRecommanded = RecommandedList.recommandedList[index];
      return songDataRecommanded;
    }
  }

  getPrevSongData(songDataModel) {
    int index = songDataModel.index;
    index--;
    if (songDataModel.isRecently) {
      if (index == -1) {
        index = SingerList.singersList.length - 1;
      }
      emit(NowSongRecentlyState());
      songDataRecently = SingerList.singersList[index];
      return songDataRecently;
    } else {
      if (index == -1) {
        index = RecommandedList.recommandedList.length - 1;
      }
      emit(NowSongRecommandedState());
      songDataRecommanded = RecommandedList.recommandedList[index];
      return songDataRecommanded;
    }
  }
}
