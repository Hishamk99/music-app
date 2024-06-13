import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';

class CustomRecentlyPlayedSongsItem extends StatelessWidget {
  const CustomRecentlyPlayedSongsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/selena.png',
            width: 150,
            height: 150,
          ),
          const SizedBox(height: 6),
          Text(
            'Who Says',
            style: Styles.styles_18W500.copyWith(
              fontSize: 15,
            ),
          ),
          Text(
            'Selena Gomez',
            style: Styles.styles_12W500.copyWith(
              color: ColorsManager.kTextFieldColor,
            ),
          ),
        ],
      ),
    );
  }
}
