import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/home/widgets/custom_buttom_navigation_bar.dart';
import 'package:music_app/features/play_music/cubits/on_off_controller/on_off_controller_cubit.dart';
import 'package:music_app/features/play_music/widgets/custom_app_bar.dart';
import 'package:music_app/features/play_music/widgets/play_music_page_body.dart';

class PlayMusicPage extends StatelessWidget {
  const PlayMusicPage({super.key});
  static String id = 'PlayMusicPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomButtomNavigationBar(
          onTap: (index) {},
          index: 1,
        ),
        extendBodyBehindAppBar: true,
        appBar: const CustomAppBar(),
        body: BlocProvider(
          create: (context) => OnOffControllerCubit(),
          child:const PlayMusicPageBody(
            
          ),
        ),
      ),
    );
  }
}
