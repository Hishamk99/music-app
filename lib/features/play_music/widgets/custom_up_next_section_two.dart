import 'package:flutter/material.dart';
import 'package:music_app/core/utils/styles.dart';

class CustomUpNextSectionTwo extends StatelessWidget {
  const CustomUpNextSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          'sing me to sleep',
          style: Styles.styles_12W500.copyWith(
            fontSize: 15,
          ),
        ),
        subtitle: Text(
          'Alan Walker',
          style: Styles.styles_12W500.copyWith(

              // color: Color(0xffB1AFE9),
              ),
        ),
        trailing: Image.asset('assets/images/music_icon/right_ellipse.png'),
        leading: Image.asset(
          'assets/images/sing_me.png',
          height: 42,
        ),
      ),
    );
  }
}