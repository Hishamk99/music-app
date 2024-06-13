import 'package:flutter/material.dart';
import 'package:music_app/core/utils/styles.dart';

class CustomHomeText extends StatelessWidget {
  const CustomHomeText({
    super.key,
    required this.txt,
  });

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        txt,
        textAlign: TextAlign.start,
        style: Styles.styles_18W500,
      ),
    );
  }
}
