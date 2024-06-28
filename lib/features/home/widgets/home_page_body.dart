import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/core/resources/colors.dart';
import 'custom_recently_played_text.dart';
import 'custom_text_field.dart';
import 'recently_played_list_view.dart';
import 'recommanded_music_list_view.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(.20, -.98),
          end: const Alignment(-.20, .98),
          colors: ColorsManager.homePlayMusicGradient,
        ),
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 50)),
          SliverToBoxAdapter(
            child: CustomTextField(
              onChanged: (String val) {
                
              },
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          const SliverToBoxAdapter(child: CustomHomeText(txt: 'SEARCH SONG')),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          const SliverToBoxAdapter(child: RecentlyPlayedListView()),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          const SliverToBoxAdapter(
            child: CustomHomeText(txt: 'Recommanded music'),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 14)),
          const RecommandedMusicListView(),
        ],
      ),
    );
  }
}
