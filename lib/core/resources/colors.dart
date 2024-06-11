import 'package:flutter/material.dart';

class ColorsManager {
  static const kPrimaryColor = Color(0xff411F5C);
  static Color kSecondColor = const Color(0x892b17ca).withOpacity(.54);
  static Color kFourthColor = const Color(0xff3097C5).withOpacity(.04);
  static const kWhiteColor = Colors.white;
  static const kButtonColor = Color(0xff3097c5);

  static List<Color> homeGradient = [
    kPrimaryColor,
    const Color(0xff261f5c).withOpacity(.54),
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
