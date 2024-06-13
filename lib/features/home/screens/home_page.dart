import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';
import 'package:music_app/features/home/widgets/custom_recently_played_text.dart';
import 'package:music_app/features/home/widgets/custom_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(.2, -.12),
              end: const Alignment(-8, 3),
              colors: ColorsManager.homeGradient,
            ),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50),
              CustomTextField(),
              SizedBox(height: 20),
              CustomRecentlyPlayedText(),
              SizedBox(height: 20),
              CustomRecentlyPlayedSongsItem(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRecentlyPlayedSongsItem extends StatelessWidget {
  const CustomRecentlyPlayedSongsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/selena.png'),
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
    );
  }
}
