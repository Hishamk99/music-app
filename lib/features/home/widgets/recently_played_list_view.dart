import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:music_app/features/home/data/singer_list.dart';
import 'package:music_app/features/home/models/singer_model.dart';
import 'package:music_app/features/play_music/cubits/next_previous/next_previous_song_cubit.dart';
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

              Navigator.pushNamed(context, PlayMusicPage.id);

              SingerModel singerModel = SingerModel(
                index: index,
                image: SingerList.singersList[index].image,
                name: SingerList.singersList[index].name,
                songName: SingerList.singersList[index].songName,
                path: SingerList.singersList[index].path,
              );
              BlocProvider.of<NextPreviousSongCubit>(context)
                  .getSongData(singerModel, true);
            },
          );
        },
      ),
    );
  }
}
