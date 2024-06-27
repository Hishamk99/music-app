import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';
import 'package:music_app/main.dart';

class CustomDurationText extends StatelessWidget {
  const CustomDurationText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StreamBuilder<Duration>(
          stream: playMusic.outputBeginNow,
          builder: (context, snapshot) {
            return Text(
              '${snapshot.data?.inMinutes ?? '0'}:${(snapshot.data?.inSeconds ?? 0) % 60}',
              style: Styles.styles_12W500.copyWith(
                color: ColorsManager.kTextFieldColor,
              ),
            );
          },
        ),
        StreamBuilder<Duration?>(
          stream: playMusic.outputEnd,
          builder: (context, snapshot) {
            return Text(
              //'${disposeModel.duration.inMinutes}:${disposeModel.duration.inSeconds % 60}',
              '${snapshot.data?.inMinutes ?? 0}:${(snapshot.data?.inSeconds ?? 0) % 60}',
              style: Styles.styles_12W500.copyWith(
                color: ColorsManager.kTextFieldColor,
              ),
            );
          },
        ),
      ],
    );
  }
}