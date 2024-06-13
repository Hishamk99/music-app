import 'package:flutter/material.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/buttom_bar/first.png',
      'assets/images/buttom_bar/home.png',
      'assets/images/buttom_bar/heart.png',
      'assets/images/buttom_bar/list.png',
      'assets/images/buttom_bar/settings.png',
    ];
    return BottomNavigationBar(
      backgroundColor: const Color(0xff261F44),
      type: BottomNavigationBarType.fixed,
      items: [
        for (int i = 0; i < images.length; i++)
          BottomNavigationBarItem(
            icon: Image.asset(
              images[i],
              color: Colors.white,
            ),
            label: '',
          ),
      ],
    );
  }
}
