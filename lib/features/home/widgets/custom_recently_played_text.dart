import 'package:flutter/material.dart';
import 'package:music_app/core/utils/styles.dart';

class CustomRecentlyPlayedText extends StatelessWidget {
  const CustomRecentlyPlayedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        'Recently Played',
        textAlign: TextAlign.start,
        style: Styles.styles_18W500,
      ),
    );
  }
}
