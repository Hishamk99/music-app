import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/home/models/singer_model.dart';
import 'package:music_app/features/play_music/cubits/next_previous/next_previous_song_cubit.dart';
import 'package:music_app/main.dart';
import 'custom_duration_text.dart';
import 'custom_music_icon.dart';
import 'custom_slider.dart';
import 'on_off_builder.dart';

class CustomControlsPlayMusic extends StatelessWidget {
  const CustomControlsPlayMusic({super.key});
  @override
  Widget build(BuildContext context) {
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
                onPressed: () {},
              ),
              const CustomOnOffBuilder(),
              CustomMusicIcon(
                musicIcon: 'assets/images/music_icon/right_ellipse.png',
                onPressed: () {
                  bool data = BlocProvider.of<NextPreviousSongCubit>(context)
                      .isRecently;

                  if (data) {
                    SingerModel singerModel =
                        BlocProvider.of<NextPreviousSongCubit>(context)
                            .songDataRecently!;
                   var song =  BlocProvider.of<NextPreviousSongCubit>(context)
                        .getNextSongData(singerModel);
                    playMusic.playSound(song.path);
                  } else {}
                },
              ),
              CustomMusicIcon(
                musicIcon: 'assets/images/music_icon/again.png',
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 14),
          CustomSlider(
            onChanged: (val) {},
            val: .7,
          ),
          const SizedBox(height: 6),
          const CustomDurationText(),
        ],
      ),
    );
  }
}
