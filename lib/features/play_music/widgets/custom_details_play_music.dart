import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';
import 'custom_music_icon.dart';
import 'custom_slider.dart';
import 'on_off_builder.dart';

class CustomControlsPlayMusic extends StatelessWidget {
  const CustomControlsPlayMusic({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
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
              const CustomOnOffBuilder(),
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
          const SizedBox(height: 14),
          CustomSlider(
            onChanged: (val) {},
            val: .7,
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2.03',
                style: Styles.styles_12W500.copyWith(
                  color: ColorsManager.kTextFieldColor,
                ),
              ),
              Text(
                '4.03',
                style: Styles.styles_12W500.copyWith(
                  color: ColorsManager.kTextFieldColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
