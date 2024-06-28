import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/home/data/singer_list.dart';
import 'package:music_app/features/home/models/singer_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  getSeachedSong(String name) {
    if (name.trim().isEmpty) {
      emit(SearchNotExisted());
    }
    List<SingerModel> singerList = [];
    for (int i = 0; i < SingerList.singersList.length; i++) {
      String nameSinger = SingerList.singersList[i].name.trim().toLowerCase();
      String nameSong = SingerList.singersList[i].songName.trim().toLowerCase();
      if (nameSinger.contains(name.trim().toLowerCase()) ||
          nameSong.contains(name.trim().toLowerCase())) {
        singerList.add(SingerList.singersList[i]);
      }
    }
    emit(SearchExisted(singerList));
  }
}
