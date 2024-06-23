import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes.dart';
import 'package:music_app/core/utils/play_music.dart';
import 'core/utils/servise_locator.dart';
import 'features/splash/screens/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();

  playMusic.setInputOutput();
  playMusic.setInputOutputEndDuration();
  runApp(const MusicApp());
}

PlayMusic playMusic = getIt.get<PlayMusic>();

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
