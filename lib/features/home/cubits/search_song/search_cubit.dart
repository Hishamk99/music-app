import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/home/data/singer_list.dart';
import 'package:music_app/features/home/models/singer_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  List<SingerModel> getSeachedSong(String name) {
    if (name.trim().isEmpty) {
      emit(SearchNotExisted());
      return SingerList.singersList;
    }
    List<SingerModel> singerList = [];
    for (int i = 0; i < SingerList.singersList.length; i++) {
      String nameSong = SingerList.singersList[i].name.trim().toLowerCase();
      if (nameSong.contains(name.trim().toLowerCase())) {
        singerList.add(SingerList.singersList[i]);
      }
    }
    emit(SearchExisted());
    return singerList;
  }
}
