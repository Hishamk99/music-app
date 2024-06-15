import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'custom_up_next_section_one.dart';
import 'custom_up_next_section_two.dart';

class CustomUpNext extends StatelessWidget {
  const CustomUpNext({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: ColorsManager.kTextFieldColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              children: [
                CustomUpNextSectionOne(),
                CustomUpNextSectionTwo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
