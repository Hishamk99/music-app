import 'package:flutter/material.dart';

import 'custom_recently_played_song_item.dart';

class RecentlyPlayedListView extends StatelessWidget {
  const RecentlyPlayedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomRecentlyPlayedSongsItem();
        },
      ),
    );
  }
}