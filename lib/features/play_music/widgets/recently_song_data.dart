import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';
import 'package:music_app/features/home/models/singer_model.dart';

class RecentlySongData extends StatelessWidget {
  const RecentlySongData({
    super.key,
    required this.data,
  });

  final SingerModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            data.image,
            width: MediaQuery.of(context).size.width * .6,
            height: MediaQuery.of(context).size.height * .26,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          data.songName,
          style: Styles.styles_12W500.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          data.name,
          style: Styles.styles_12W500.copyWith(
            color: ColorsManager.kTextFieldColor,
          ),
        ),
      ],
    );
  }
}