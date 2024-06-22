import 'package:flutter/material.dart';
import 'package:music_app/core/utils/play_music.dart';
import 'package:music_app/core/utils/servise_locator.dart';
import 'package:music_app/features/home/data/recommanded_list.dart';
import 'package:music_app/features/home/models/song_data_model.dart';
import 'package:music_app/features/play_music/screens/play_music_page.dart';

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
              PlayMusic playMusic = getIt.get<PlayMusic>();
              playMusic.playSound(RecommandedList.recommandedList[index].path);

              Navigator.pushNamed(
                context,
                PlayMusicPage.id,
                arguments: SongDataModel(
                  index: index,
                  isRecently: false,
                  path: RecommandedList.recommandedList[index].rectangeImage,
                  name: RecommandedList.recommandedList[index].name,
                  songName: RecommandedList.recommandedList[index].songName,
                  //duration: du!,
                  duration: playMusic.duration!,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
