import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/home/cubits/search_song/search_cubit.dart';

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
    List<SingerModel> singerList = SingerList.singersList;
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        if (state is SearchNotExisted) {
          singerList = SingerList.singersList;
        } else if (state is SearchExisted) {
          singerList = state.singerList;
        }
      },
      builder: (context, state) {
        return SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: singerList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CustomRecentlyPlayedSongsItem(
                singerModel: singerList[index],
                onTap: () {
                  playMusic.playSound(SingerList.singersList[index].path);

                  Navigator.pushNamed(context, PlayMusicPage.id);

                  SingerModel singerModel = SingerModel(
                    index: index,
                    image: singerList[index].image,
                    name: singerList[index].name,
                    songName: singerList[index].songName,
                    path: singerList[index].path,
                  );
                  BlocProvider.of<NextPreviousSongCubit>(context)
                      .getSongData(singerModel, true);
                },
              );
            },
          ),
        );
      },
    );
  }
}
