import 'package:flutter/material.dart';
import 'package:music_app/features/home/data/singer_list.dart';
import 'package:music_app/features/home/models/dispose_model.dart';
import 'package:music_app/features/play_music/screens/play_music_page.dart';
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
              Navigator.pushNamed(
                context,
                PlayMusicPage.id,
                arguments: DisposeModel(index: index, isRecently: true),
              );
              SingerList.singersList[index].playSound();
            },
          );
        },
      ),
    );
  }
}
