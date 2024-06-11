import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/features/home/screens/home_page.dart';

import 'custom_splash_button.dart';

class SectionTwoSplash extends StatelessWidget {
  const SectionTwoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 382,
          child: Image.asset(
            'assets/images/guy_listening_music.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 80,
          top: -4,
          child: CustomSplashButton(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0, 1),
                end: const Alignment(0, -1),
                colors: ColorsManager.buttomSplashContainer,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
