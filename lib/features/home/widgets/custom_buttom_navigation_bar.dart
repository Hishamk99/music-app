import 'package:flutter/material.dart';
import 'package:music_app/features/home/data/buttom_navigation_bar_images.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({
    super.key,
    required this.onTap,
    required this.index,
  });
  final void Function(int)? onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      backgroundColor: const Color(0xff261F44),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: index,
      items: [
        for (int i = 0; i < ImagesBar.images.length; i++)
          BottomNavigationBarItem(
            icon: Image.asset(
              ImagesBar.images[i],
              color: i == index ? const Color(0xff854F9F) : Colors.white,
            ),
            label: '',
          ),
      ],
    );
  }
}
