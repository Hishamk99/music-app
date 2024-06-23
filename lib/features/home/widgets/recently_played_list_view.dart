import 'package:flutter/material.dart';

import 'package:music_app/features/home/data/singer_list.dart';
import 'package:music_app/features/home/models/song_data_model.dart';
import 'package:music_app/features/play_music/screens/play_music_page.dart';
import 'package:music_app/main.dart';
import 'custom_recently_played_song_item.dart';

class RecentlyPlayedListView extends StatelessWidget {
  const RecentlyPlayedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: SingerList.singersList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomRecentlyPlayedSongsItem(
            singerModel: SingerList.singersList[index],
            onTap: () {
              playMusic.playSound(SingerList.singersList[index].path);

              Navigator.pushNamed(
                context,
                PlayMusicPage.id,
                arguments: SongDataModel(
                  index: index,
                  isRecently: true,
                  path: SingerList.singersList[index].image,
                  name: SingerList.singersList[index].name,
                  songName: SingerList.singersList[index].songName,
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
