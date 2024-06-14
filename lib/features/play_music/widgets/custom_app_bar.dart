import 'package:flutter/material.dart';
import 'package:music_app/core/utils/styles.dart';

import 'custom_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: CustomIconButton(
        image: 'assets/images/left_arrow.png',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'NOW PLAYING',
        style: Styles.styles_18W500.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        CustomIconButton(
          image: 'assets/images/sharre.png',
          onPressed: () {},
        ),
        CustomIconButton(
          image: 'assets/images/Menu.png',
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}