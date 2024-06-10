import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';
import 'package:music_app/features/splash/widgets/custom_splash_button.dart';

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
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ColorsManager.kPrimaryColor,
                ColorsManager.kSecondColor,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Find Your',
                  style: Styles.styleS_50W700,
                ),
                const Text(
                  'Favourite',
                  style: Styles.styleS_50W700,
                ),
                Text(
                  'Music',
                  style: Styles.styleS_50W700.copyWith(
                    color: const Color(0xff80CFF2),
                  ),
                ),
                // Text('Find Your Latest Favourite Music From Our Collection',
                
                
                
                // ),
                CustomSplashButton(
                  onTap: () {},
                ),
                Image.asset(
                  'assets/images/guy_listening_music.png',
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


