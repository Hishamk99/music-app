import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';

class CustomSplashButton extends StatelessWidget {
  const CustomSplashButton({super.key, required this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 165,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: const Border(
            top: BorderSide(
              width: 1,
              color: Colors.white,
            ),
          ),
          gradient: LinearGradient(
            begin: const Alignment(0, -1),
            end: const Alignment(0, 1),
            colors: ColorsManager.buttonSplash,
          ),
        ),
        child: const Center(
          child: Text(
            'Get Started',
            style: Styles.styles_18W500,
          ),
        ),
      ),
    );
  }
}
