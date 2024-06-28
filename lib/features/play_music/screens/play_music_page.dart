import 'package:flutter/material.dart';
import 'package:music_app/features/home/widgets/custom_buttom_navigation_bar.dart';
import 'package:music_app/features/play_music/widgets/custom_app_bar.dart';
import 'package:music_app/features/play_music/widgets/play_music_page_body.dart';

class PlayMusicPage extends StatefulWidget {
  const PlayMusicPage({super.key});
  static String id = 'PlayMusicPage';

  @override
  State<PlayMusicPage> createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {
  int ind = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomButtomNavigationBar(
          onTap: (index) {
            setState(() {
              ind = index;
            });
          },
          index: ind,
        ),
        extendBodyBehindAppBar: true,
        appBar: const CustomAppBar(),
        body: const PlayMusicPageBody(),
      ),
    );
  }
}
