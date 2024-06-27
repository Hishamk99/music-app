import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/home/models/recommanded_model.dart';
import 'package:music_app/features/home/models/singer_model.dart';
import 'package:music_app/features/play_music/cubits/next_previous/next_previous_song_cubit.dart';
import 'package:music_app/features/play_music/models/loop_model.dart';
import 'package:music_app/main.dart';

import 'custom_music_icon.dart';

class CustomLoopMusic extends StatelessWidget {
  const CustomLoopMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool data = BlocProvider.of<NextPreviousSongCubit>(context).isRecent;

    return StreamBuilder<LoopModel>(
      stream: playMusic.loopOutput,
      builder: (context, snapshot) {
        if (snapshot.data?.isNext ?? false) {
          if (data) {
            SingerModel singerModel =
                BlocProvider.of<NextPreviousSongCubit>(context)
                    .songDataRecently!;
            playMusic.playSound(BlocProvider.of<NextPreviousSongCubit>(context)
                .getNextSongData(singerModel)
                .path);
          } else {
            RecommandedModel recommanedModel =
                BlocProvider.of<NextPreviousSongCubit>(context)
                    .songDataRecommanded!;

            playMusic.playSound(BlocProvider.of<NextPreviousSongCubit>(context)
                .getNextSongData(recommanedModel)
                .path);
          }
        }
        return CustomMusicIcon(
          musicIcon: 'assets/images/music_icon/again.png',
          color: snapshot.data?.isLoop ?? false ? Colors.orange : Colors.white,
          onPressed: () {
            playMusic.loopMusic();
          },
        );
      },
    );
  }
}
