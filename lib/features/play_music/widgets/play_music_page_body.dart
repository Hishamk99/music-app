import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/features/home/models/song_data_model.dart';
import 'package:music_app/features/play_music/cubits/on_off_controller/on_off_controller_cubit.dart';
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
      child: BlocProvider(
        create: (context) => OnOffControllerCubit(),
        child: Column(
          children: [
            SizedBox(height: height * .12),
            CustomSongImage(disposeModel: disposeModel),
            SizedBox(height: height * .02),
            const CustomControlsPlayMusic(),
            SizedBox(height: height * .03),
            const CustomMusicOptions(),
            SizedBox(height: height * .01),
            const CustomUpNext(),
          ],
        ),
      ),
    );
  }
}
