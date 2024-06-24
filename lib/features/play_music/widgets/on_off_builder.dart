import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/features/play_music/widgets/custom_music_icon.dart';
import 'package:music_app/main.dart';

class CustomOnOffBuilder extends StatelessWidget {
  const CustomOnOffBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: ColorsManager.kTextFieldColor,
      child: StreamBuilder<String>(
        stream: playMusic.onOffOutput,
        builder: (context, snapshot) {
          return CustomMusicIcon(
            musicIcon: snapshot.data ?? 'assets/images/music_icon/on_off.png',
            onPressed: () {
              String path = 'assets/images/music_icon/on_off.png';
              if (path == 'assets/images/music_icon/on_off.png') {
                path = 'assets/images/music_icon/play.png';
              }
              playMusic.changeIcon(path);
            },
          );
        },
      ),
    );
  }
}
