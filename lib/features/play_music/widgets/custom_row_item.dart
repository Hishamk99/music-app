import 'package:flutter/material.dart';
import 'package:music_app/core/utils/styles.dart';

class CustomRowItem extends StatelessWidget {
  const CustomRowItem({
    super.key,
    required this.onPressed,
    required this.imageRow,
    required this.text,
  });

  final void Function()? onPressed;
  final String imageRow;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: IconButton(
            onPressed: onPressed,
            icon: Image.asset(
              imageRow,
            ),
          ),
        ),
        Text(
          text,
          style: Styles.styles_12W500.copyWith(
            fontSize: 8,
          ),
        ),
      ],
    );
  }
}