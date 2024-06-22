import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/core/utils/play_music.dart';
import 'package:music_app/core/utils/servise_locator.dart';

part 'on_off_controller_state.dart';

class OnOffControllerCubit extends Cubit<OnOffControllerState> {
  OnOffControllerCubit() : super(OnOffControllerInitial());

  bool isPlaying = true;

  PlayMusic playMusic = getIt.get<PlayMusic>();

  void changeIcon() {
    playMusic.pauseAndPlaySound();
    isPlaying = !isPlaying;
    emit(OnOffController());
  }
}
