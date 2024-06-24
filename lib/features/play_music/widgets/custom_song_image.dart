import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';
import 'package:music_app/features/home/models/recommanded_model.dart';
import 'package:music_app/features/home/models/singer_model.dart';
import 'package:music_app/features/play_music/cubits/next_previous/next_previous_song_cubit.dart';

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
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  data.image,
                  width: MediaQuery.of(context).size.width * .6,
                  height: MediaQuery.of(context).size.height * .26,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                data.songName,
                style: Styles.styles_12W500.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                data.name,
                style: Styles.styles_12W500.copyWith(
                  color: ColorsManager.kTextFieldColor,
                ),
              ),
            ],
          );
        } else {
          SingerModel data =
              BlocProvider.of<NextPreviousSongCubit>(context)
                  .songDataRecently!;
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  data.image,
                  width: MediaQuery.of(context).size.width * .6,
                  height: MediaQuery.of(context).size.height * .26,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                data.songName,
                style: Styles.styles_12W500.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                data.name,
                style: Styles.styles_12W500.copyWith(
                  color: ColorsManager.kTextFieldColor,
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
