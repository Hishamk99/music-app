import 'package:flutter/material.dart';

class CustomMusicIcon extends StatelessWidget {
  const CustomMusicIcon({
    super.key,
    required this.musicIcon,
    required this.onPressed,  this.color = Colors.white,
  });
  final String musicIcon;
  final void Function()? onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Image.asset(
        musicIcon,
        color: color,
        width: 25,
      ),
    );
  }
}
