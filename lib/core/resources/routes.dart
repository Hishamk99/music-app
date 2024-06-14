import 'package:flutter/material.dart';
import 'package:music_app/features/home/screens/home_page.dart';
import 'package:music_app/features/play_music/screens/play_music_page.dart';
import 'package:music_app/features/splash/screens/splash_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
     SplashPage.id : (context)=> const SplashPage(),
     HomePage.id : (context)=> const HomePage(),
     PlayMusicPage.id : (context)=> const PlayMusicPage(),

  };
}
