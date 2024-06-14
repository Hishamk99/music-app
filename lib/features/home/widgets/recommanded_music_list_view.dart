import 'package:flutter/material.dart';
import 'package:music_app/features/home/data/recommanded_list.dart';

import 'custom_recommanded_music_item.dart';

class RecommandedMusicListView extends StatelessWidget {
  const RecommandedMusicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: RecommandedList.recommandedList.length,
        (context, index) {
          return CustomRecommandedMusicItem(
            recommandedModel: RecommandedList.recommandedList[index],
            onTap: () {},
            playMusic: () {
              
            },
          );
        },
      ),
    );
  }
}
