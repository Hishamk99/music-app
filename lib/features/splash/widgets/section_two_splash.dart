import 'package:flutter/material.dart';

import 'custom_splash_button.dart';

class SectionTwoSplash extends StatelessWidget {
  const SectionTwoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSplashButton(
          onTap: () {},
        ),
        Image.asset(
          'assets/images/guy_listening_music.png',
          width: double.infinity,
          //fit: BoxFit.cover,
        ),
      ],
    );
  }
}
