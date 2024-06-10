import 'package:flutter/material.dart';
import 'package:music_app/core/utils/styles.dart';

class SectionOneSplash extends StatelessWidget {
  const SectionOneSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Text(
            'Find Your',
            style: Styles.styles_40W700,
          ),
          const Text(
            'Favourite',
            style: Styles.styles_40W700,
          ),
          Text(
            'Music',
            style: Styles.styles_40W700.copyWith(
              color: const Color(0xff80CFF2),
            ),
          ),
          const Text(
            'Find Your Latest Favourite Music',
            style: Styles.styles_12W500,
          ),
          const Text(
            'From Our Collection',
            style: Styles.styles_12W500,
          ),
        ],
      ),
    );
  }
}