import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';

import 'custom_row_item.dart';

class CustomMusicOptions extends StatelessWidget {
  const CustomMusicOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .066,
      width: MediaQuery.of(context).size.width * .7,
      decoration: BoxDecoration(
        color: ColorsManager.kTextFieldColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomRowItem(
            onPressed: () {},
            imageRow: 'assets/images/buttom_bar/heart.png',
            text: 'Like',
          ),
          CustomRowItem(
            onPressed: () {},
            imageRow: 'assets/images/music_icon/playlist.png',
            text: 'Play List',
          ),
          CustomRowItem(
            onPressed: () {},
            imageRow: 'assets/images/music_icon/download.png',
            text: 'Download',
          ),
          CustomRowItem(
            onPressed: () {},
            imageRow: 'assets/images/Menu.png',
            text: 'More',
          ),
        ],
      ),
    );
  }
}
