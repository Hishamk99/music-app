import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';

class CustomSongImage extends StatelessWidget {
  const CustomSongImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/new_rules.png',
          width: MediaQuery.of(context).size.width * .6,
          height: MediaQuery.of(context).size.height * .26,
        ),
        const SizedBox(height: 10),
        Text(
          'NEW RULES',
          style: Styles.styles_12W500.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Dua Lipa',
          style: Styles.styles_12W500.copyWith(
            color: ColorsManager.kTextFieldColor,
          ),
        ),
      ],
    );
  }
}
