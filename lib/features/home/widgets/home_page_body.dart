import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';

import 'custom_recently_played_text.dart';
import 'custom_text_field.dart';
import 'recently_played_list_view.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          CustomHomeText(txt: 'RECENTLY PLAYED'),
          SizedBox(height: 20),
          RecentlyPlayedListView(),
          SizedBox(height: 12),
          CustomHomeText(txt: 'Recommanded music'),
        ],
      ),
    );
  }
}