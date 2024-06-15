import 'package:flutter/material.dart';
import 'package:music_app/core/utils/styles.dart';

class CustomUpNextSectionOne extends StatelessWidget {
  const CustomUpNextSectionOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Up Next',
          style: Styles.styles_12W500.copyWith(
            fontSize: 10,
          ),
        ),
        Container(
          height: 16,
          // width: 0,
          decoration: BoxDecoration(
            color: const Color(0xff8A86F4).withOpacity(.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Queue >',
              style: Styles.styles_12W500.copyWith(
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
