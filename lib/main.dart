import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes.dart';

import 'features/splash/screens/splash_page.dart';

void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Orbitron',
      ),
      routes: Routes.routes,
      initialRoute: SplashPage.id,
    );
  }
}