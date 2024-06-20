import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/play_music.dart';
import 'package:music_app/core/utils/servise_locator.dart';
import 'package:music_app/features/play_music/widgets/custom_music_icon.dart';

class CustomOnOffBuilder extends StatelessWidget {
  const CustomOnOffBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: ColorsManager.kTextFieldColor,
      child: CustomMusicIcon(
        musicIcon: 'assets/images/music_icon/on_off.png',
        onPressed: () {
          PlayMusic playMusic = getIt.get<PlayMusic>();

          playMusic.pauseAndPlaySound();
        },
      ),
    );
  }
}
