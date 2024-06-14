import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';
import 'package:music_app/features/home/models/singer_model.dart';

class CustomRecentlyPlayedSongsItem extends StatelessWidget {
  const CustomRecentlyPlayedSongsItem({
    super.key,
    required this.singerModel,required this.onTap,
  });
  final SingerModel singerModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                singerModel.image,
                fit: BoxFit.fill,
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              singerModel.songName,
              style: Styles.styles_12W500,
            ),
            Text(
              singerModel.name,
              style: Styles.styles_12W500.copyWith(
                color: ColorsManager.kTextFieldColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
