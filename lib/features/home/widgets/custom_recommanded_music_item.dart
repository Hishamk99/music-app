import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';
import 'package:music_app/features/home/models/recommanded_model.dart';

class CustomRecommandedMusicItem extends StatelessWidget {
  const CustomRecommandedMusicItem({
    super.key,
    required this.onTap,
    required this.recommandedModel,
  });
  final void Function()? onTap;
  final RecommandedModel recommandedModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: Image.asset(
              recommandedModel.image,
              width: 72,
              height: 72,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recommandedModel.songName,
                style: Styles.styles_12W500.copyWith(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                recommandedModel.name,
                style: Styles.styles_12W500.copyWith(
                  color: ColorsManager.kTextFieldColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: Image.asset(
              'assets/images/buttom_bar/heart.png',
              color: recommandedModel.isLiked ? Colors.red : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
