import 'package:flutter/material.dart';
import 'package:music_app/features/splash/widgets/splash_page_body.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static String id = 'SplashPage';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SplashPageBody(),
      ),
    );
  }
}


