import 'package:flutter/material.dart';
import 'package:music_app/features/play_music/widgets/custom_app_bar.dart';
import 'package:music_app/features/play_music/widgets/play_music_page_body.dart';

class PlayMusicPage extends StatelessWidget {
  const PlayMusicPage({super.key});
  static String id = 'PlayMusicPage';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(),
        body: PlayMusicPageBody(),
      ),
    );
  }
}
