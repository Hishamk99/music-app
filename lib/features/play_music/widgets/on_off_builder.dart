import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/features/play_music/cubits/on_off_controller/on_off_controller_cubit.dart';
import 'package:music_app/features/play_music/widgets/custom_music_icon.dart';

class CustomOnOffBuilder extends StatelessWidget {
  const CustomOnOffBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: ColorsManager.kTextFieldColor,
      child: BlocBuilder<OnOffControllerCubit, OnOffControllerState>(
        builder: (context, state) {
          return CustomMusicIcon(
            musicIcon: BlocProvider.of<OnOffControllerCubit>(context).isPlaying
                ? 'assets/images/music_icon/on_off.png'
                : 'assets/images/music_icon/play.png',
            onPressed: () {
              BlocProvider.of<OnOffControllerCubit>(context).changeIcon();
            },
          );
        },
      ),
    );
  }
}
