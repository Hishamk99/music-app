import 'package:flutter/material.dart';
import 'package:music_app/core/utils/styles.dart';
import 'package:music_app/features/play_music/widgets/custom_icon_button.dart';
import 'package:music_app/features/play_music/widgets/play_music_page_body.dart';

class PlayMusicPage extends StatelessWidget {
  const PlayMusicPage({super.key});
  static String id = 'PlayMusicPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: CustomIconButton(
            image: 'assets/images/left_arrow.png',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'NOW PLAYING',
            style: Styles.styles_18W500,
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
        ),
        body: const PlayMusicPageBody(),
      ),
    );
  }
}
