import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/home/models/recommanded_model.dart';
import 'package:music_app/features/home/models/singer_model.dart';
import 'package:music_app/features/play_music/cubits/next_previous/next_previous_song_cubit.dart';
import 'package:music_app/main.dart';
import 'custom_duration_text.dart';
import 'custom_loop_music.dart';
import 'custom_music_icon.dart';
import 'custom_slider.dart';
import 'on_off_builder.dart';

class CustomControlsPlayMusic extends StatelessWidget {
  const CustomControlsPlayMusic({super.key});
  @override
  Widget build(BuildContext context) {
    bool data = BlocProvider.of<NextPreviousSongCubit>(context).isRecent;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomMusicIcon(
                musicIcon: 'assets/images/music_icon/shuffle.png',
                onPressed: () {},
              ),
              CustomMusicIcon(
                musicIcon: 'assets/images/music_icon/left_ellipse.png',
                onPressed: () {
                  getNextOrPrevSong(data, false, context);
                  playMusic.changeIcon('assets/images/music_icon/on_off.png');
                },
              ),
              const CustomOnOffBuilder(),
              CustomMusicIcon(
                musicIcon: 'assets/images/music_icon/right_ellipse.png',
                onPressed: () {
                  getNextOrPrevSong(data, true, context);
                  playMusic.changeIcon('assets/images/music_icon/on_off.png');
                },
              ),
              const CustomLoopMusic(),
            ],
          ),
          const SizedBox(height: 14),
          CustomSlider(
            onChanged: (val) {
              playMusic.onChangedSlider(val);
            },
          ),
          const SizedBox(height: 6),
          const CustomDurationText(),
        ],
      ),
    );
  }

  void getNextOrPrevSong(bool data, bool isNext, BuildContext context) {
    if (data) {
      SingerModel singerModel =
          BlocProvider.of<NextPreviousSongCubit>(context).songDataRecently!;
      if (isNext) {
        playMusic.playSound(BlocProvider.of<NextPreviousSongCubit>(context)
            .getNextSongData(singerModel)
            .path);
      } else {
        playMusic.playSound(BlocProvider.of<NextPreviousSongCubit>(context)
            .getPrevSongData(singerModel)
            .path);
      }
    } else {
      RecommandedModel recommanedModel =
          BlocProvider.of<NextPreviousSongCubit>(context).songDataRecommanded!;

      if (isNext) {
        playMusic.playSound(BlocProvider.of<NextPreviousSongCubit>(context)
            .getNextSongData(recommanedModel)
            .path);
      } else {
        playMusic.playSound(BlocProvider.of<NextPreviousSongCubit>(context)
            .getPrevSongData(recommanedModel)
            .path);
      }
    }
  }
}
