import 'package:flutter/material.dart';

class ColorsManager {
  static const kPrimaryColor = Color(0x89411F5C);
  static Color kSecondColor = const Color(0xff2b17ca).withOpacity(.54);
  static const kWhiteColor = Colors.white;
  static const kButtonColor = Color(0xff3097c5);
  static const kTextFieldColor = Color(0xffb1afe9);

  static List<Color> homeGradient = [
    kPrimaryColor,
    const Color(0xff261f5c).withOpacity(.9),
  ];
  static List<Color> buttonSplash = [
    const Color(0xff2f5d9a),
    const Color(0xff80cff2),
  ];

  static List<Color> buttomSplashContainer = [
    kPrimaryColor,
    const Color(0xff3097c5).withOpacity(.04),
  ];
}
