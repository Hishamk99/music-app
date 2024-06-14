import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';

class PlayMusicPageBody extends StatelessWidget {
  const PlayMusicPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(.20, -.98),
          end: const Alignment(-.20, .98),
          colors: ColorsManager.homePlayMusicGradient,
        ),
      ),
      child: const Column(
        children: [],
      ),
    );
  }
}
