import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_splash_button.dart';

class SectionTwoSplash extends StatelessWidget {
  const SectionTwoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/guy_listening_music.png',
          width: double.infinity,
          //fit: BoxFit.cover,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSplashButton(
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
