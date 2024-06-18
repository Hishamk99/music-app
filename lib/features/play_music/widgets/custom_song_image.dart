import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';
import 'package:music_app/features/home/models/dispose_model.dart';

class CustomSongImage extends StatelessWidget {
  const CustomSongImage({super.key, required this.disposeModel});
  final DisposeModel disposeModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          disposeModel.path,
          width: MediaQuery.of(context).size.width * .6,
          height: MediaQuery.of(context).size.height * .26,
        ),
        const SizedBox(height: 10),
        Text(
          disposeModel.songName,
          style: Styles.styles_12W500.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          disposeModel.name,
          style: Styles.styles_12W500.copyWith(
            color: ColorsManager.kTextFieldColor,
          ),
        ),
      ],
    );
  }
}
