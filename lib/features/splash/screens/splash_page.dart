import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/features/splash/widgets/section_one_splash.dart';
import 'package:music_app/features/splash/widgets/section_two_splash.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static String id = 'SplashPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
        ),
      ),
    );
  }
}
