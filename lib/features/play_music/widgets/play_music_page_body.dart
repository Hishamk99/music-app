import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/features/home/models/song_data_model.dart';
import 'custom_details_play_music.dart';
import 'custom_music_options.dart';
import 'custom_song_image.dart';
import 'custom_up_next.dart';

class PlayMusicPageBody extends StatelessWidget {
  const PlayMusicPageBody({super.key, required this.disposeModel});
  final SongDataModel disposeModel;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(.20, -.98),
          end: const Alignment(-.20, .98),
          colors: ColorsManager.homePlayMusicGradient,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: height * .12),
          CustomSongImage(disposeModel: disposeModel),
          SizedBox(height: height * .02),
          CustomControlsPlayMusic(disposeModel: disposeModel),
          SizedBox(height: height * .03),
          const CustomMusicOptions(),
          SizedBox(height: height * .01),
          const CustomUpNext(),
        ],
      ),
    );
  }
}
