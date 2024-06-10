import 'package:flutter/material.dart';
import 'package:music_app/features/splash/screens/splash_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
     SplashPage.id : (context)=> const SplashPage(),

  };
}
