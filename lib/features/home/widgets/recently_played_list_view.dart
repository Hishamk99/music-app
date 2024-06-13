import 'package:flutter/material.dart';
import 'package:music_app/features/home/models/singer_model.dart';

import 'custom_recently_played_song_item.dart';

class RecentlyPlayedListView extends StatelessWidget {
  const RecentlyPlayedListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<SingerModel> singersList = [
      SingerModel(
        image: 'assets/images/selena.png',
        name: 'Selena Gomez',
        songName: 'Who Says',
      ),
    ];
    return Expanded(
      child: ListView.builder(
        itemCount: singersList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomRecentlyPlayedSongsItem(
            singerModel: singersList[index],
          );
        },
      ),
    );
  }
}
