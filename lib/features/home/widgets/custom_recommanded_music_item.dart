import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';

class CustomRecommandedMusicItem extends StatelessWidget {
  const CustomRecommandedMusicItem({
    super.key,
   required this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: Row(
        children: [
          Image.asset(
            'assets/images/recommanded/snaka.png',
            // width: 72,
            // height: 72,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Magenta Riddim',
                style: Styles.styles_12W500.copyWith(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                'Dj Snake',
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
            ),
          ),
        ],
      ),
    );
  }
}
