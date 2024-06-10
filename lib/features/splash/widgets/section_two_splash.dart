import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_splash_button.dart';

class SectionTwoSplash extends StatelessWidget {
  const SectionTwoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 330,
          child: Image.asset(
            'assets/images/guy_listening_music.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: -15,
          left: 80,
          child: CustomSplashButton(
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
