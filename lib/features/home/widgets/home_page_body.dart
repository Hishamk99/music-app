import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/core/resources/colors.dart';
import 'custom_recently_played_text.dart';
import 'custom_text_field.dart';
import 'recently_played_list_view.dart';
import 'recommanded_music_list_view.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(.20, -.98),
          end: const Alignment(-.20, .98),
          colors: ColorsManager.homeGradient,
        ),
      ),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 50)),
          SliverToBoxAdapter(child: CustomTextField()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: CustomHomeText(txt: 'RECENTLY PLAYED')),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: RecentlyPlayedListView()),
          SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverToBoxAdapter(child: CustomHomeText(txt: 'Recommanded music')),
          SliverToBoxAdapter(child: SizedBox(height: 14)),
          RecommandedMusicListView(),
        ],
      ),
    );
  }
}
