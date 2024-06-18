import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'custom_details_play_music.dart';
import 'custom_music_options.dart';
import 'custom_song_image.dart';
import 'custom_up_next.dart';

class PlayMusicPageBody extends StatelessWidget {
  const PlayMusicPageBody({super.key, required this.index});
  final int index;
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
          const CustomSongImage(),
          SizedBox(height: height * .02),
          CustomControlsPlayMusic(index: index),
          SizedBox(height: height * .03),
          const CustomMusicOptions(),
          SizedBox(height: height * .01),
          const CustomUpNext(),
        ],
      ),
    );
  }
}
