
import 'package:flutter/material.dart';

import 'custom_recommanded_music_item.dart';

class RecommandedMusicListView extends StatelessWidget {
  const RecommandedMusicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomRecommandedMusicItem();
      },
    );
  }
}