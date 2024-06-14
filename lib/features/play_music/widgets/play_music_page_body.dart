import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'custom_details_play_music.dart';
import 'custom_song_image.dart';

class PlayMusicPageBody extends StatelessWidget {
  const PlayMusicPageBody({super.key});

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
          SizedBox(height: height * .16),
          const CustomSongImage(),
          SizedBox(height: height * .04),
          const CustomDetailsPlayMusic(),
        ],
      ),
    );
  }
}

