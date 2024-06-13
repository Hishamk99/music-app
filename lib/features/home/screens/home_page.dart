import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/features/home/widgets/custom_recently_played_text.dart';
import 'package:music_app/features/home/widgets/custom_text_field.dart';
import 'package:music_app/features/home/widgets/recently_played_list_view.dart';

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
              RecentlyPlayedListView(),
            ],
          ),
        ),
      ),
    );
  }
}


