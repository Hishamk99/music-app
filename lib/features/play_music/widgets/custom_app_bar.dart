import 'package:flutter/material.dart';
import 'package:music_app/core/utils/play_music.dart';
import 'package:music_app/core/utils/styles.dart';
import 'package:music_app/features/home/data/recommanded_list.dart';
import 'package:music_app/features/home/data/singer_list.dart';
import 'package:music_app/features/home/models/song_data_model.dart';

import 'custom_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.songDataModel,
  });
  final SongDataModel songDataModel;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: CustomIconButton(
        image: 'assets/images/left_arrow.png',
        onPressed: () {
          // if (songDataModel.isRecently) {
          //   //SingerList.singersList[disposeModel.index].disposeSound();
          //   PlayMusic(SingerList.singersList[songDataModel.index].path)
          //       .disposeSound();
          // } else {
          //   //RecommandedList.recommandedList[disposeModel.index].disposeSound();
          //   PlayMusic(RecommandedList.recommandedList[songDataModel.index].path)
          //       .disposeSound();
          // }
          Navigator.pop(context);
        },
      ),
      title: Text(
        'NOW PLAYING',
        style: Styles.styles_18W500.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        CustomIconButton(
          image: 'assets/images/sharre.png',
          onPressed: () {},
        ),
        CustomIconButton(
          image: 'assets/images/Menu.png',
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
