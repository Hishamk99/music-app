import 'package:flutter/material.dart';

class CustomMusicIcon extends StatelessWidget {
  const CustomMusicIcon({
    super.key,
    required this.musicIcon,
    required this.onPressed,
  });
  final String musicIcon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Image.asset(
        musicIcon,
      ),
    );
  }
}
