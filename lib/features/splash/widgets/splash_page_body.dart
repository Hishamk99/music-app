import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';

import 'section_one_splash.dart';
import 'section_two_splash.dart';

class SplashPageBody extends StatelessWidget {
  const SplashPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(.2, -.98),
          end: const Alignment(-.2, .98),
          colors: [
            ColorsManager.kPrimaryColor,
            ColorsManager.kSecondColor,
          ],
        ),
      ),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            SectionOneSplash(),
            SizedBox(height: 50),
            SectionTwoSplash(),
          ],
        ),
      ),
    );
  }
}