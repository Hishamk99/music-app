import 'package:flutter/material.dart';
import 'package:music_app/main.dart';

import 'custom_music_icon.dart';

class CustomLoopMusic extends StatelessWidget {
  const CustomLoopMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: playMusic.loopOutput,
      builder: (context, snapshot) {
        return CustomMusicIcon(
          musicIcon: 'assets/images/music_icon/again.png',
          color: snapshot.data ?? false
              ? Colors.orange
              : Colors.white,
          onPressed: () {
            playMusic.loopMusic();
          },
        );
      }
    );
  }
}