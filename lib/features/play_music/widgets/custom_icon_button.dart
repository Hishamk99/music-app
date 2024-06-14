import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.image,
    required this.onPressed,
  });
  final String image;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 32,
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(
          image,
        ),
      ),
    );
  }
}