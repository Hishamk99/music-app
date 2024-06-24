import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/home/models/recommanded_model.dart';
import 'package:music_app/features/home/models/singer_model.dart';
import 'package:music_app/features/play_music/cubits/next_previous/next_previous_song_cubit.dart';
import 'package:music_app/features/play_music/widgets/recently_song_data.dart';

import 'recomanded_song_data.dart';

class CustomSongImage extends StatelessWidget {
  const CustomSongImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NextPreviousSongCubit, NextPreviousSongState>(
      builder: (context, state) {
        if (state is NowSongRecommandedState) {
          RecommandedModel data =
              BlocProvider.of<NextPreviousSongCubit>(context)
                  .songDataRecommanded!;
          return RecomandedSongData(data: data);
        } else {
          SingerModel data =
              BlocProvider.of<NextPreviousSongCubit>(context)
                  .songDataRecently!;
          return RecentlySongData(data: data);
        }
      },
    );
  }
}

