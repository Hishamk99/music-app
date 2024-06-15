import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';

import 'custom_music_icon.dart';
import 'custom_slider.dart';

class CustomControlsPlayMusic extends StatelessWidget {
  const CustomControlsPlayMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            CircleAvatar(
              radius: 30,
              backgroundColor: ColorsManager.kTextFieldColor,
              child: CustomMusicIcon(
                musicIcon: 'assets/images/music_icon/on_off.png',
                onPressed: () {},
              ),
            ),
            CustomMusicIcon(
              musicIcon: 'assets/images/music_icon/right_ellipse.png',
              onPressed: () {},
            ),
            CustomMusicIcon(
              musicIcon: 'assets/images/music_icon/again.png',
              onPressed: () {},
            ),
          ],
        ),
        CustomSlider(
          onChanged: (val) {},
          val: .7,
        ),
      ],
    );
  }
}


