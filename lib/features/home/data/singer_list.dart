import 'package:music_app/features/home/models/singer_model.dart';

class SingerList {
  static List<SingerModel> singersList = [
    SingerModel(
      image: 'assets/images/selena.png',
      name: 'Selena Gomez',
      songName: 'Who Says',
      path: 'assets/audio/who_says.mp3',
      index: 0,
    ),
    SingerModel(
      image: 'assets/images/bebber.png',
      name: 'Justin Bieber',
      songName: 'SORRY',
      path: 'assets/audio/sorry.mp3',
      index: 1,
    ),
    SingerModel(
      image: 'assets/images/alan.jfif',
      name: 'Alan Walker',
      songName: 'Sing Me To Sleep',
      path: 'assets/audio/sing_me_to_sleep.mp3',
      index: 2,
    ),
    SingerModel(
      image: 'assets/images/pitbull.jfif',
      name: 'PitBull',
      songName: 'Give Me Everything',
      path: 'assets/audio/give_me_everything.mp3',
      index: 3,
    ),
    SingerModel(
      image: 'assets/images/the-weekend.jfif',
      name: 'The Weeknd',
      songName: 'Blinding Lights',
      path: 'assets/audio/blinding_lights.mp3',
      index: 4,
    ),
  ];
}
