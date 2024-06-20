import 'package:get_it/get_it.dart';
import 'package:music_app/core/utils/play_music.dart';



final getIt = GetIt.instance;

void setup()
{
  getIt.registerSingleton<PlayMusic>(PlayMusic());
}