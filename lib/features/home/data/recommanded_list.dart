import 'package:music_app/features/home/models/recommanded_model.dart';

class RecommandedList {
  static List<RecommandedModel> recommandedList = [
    RecommandedModel(
      image: 'assets/images/recommanded/snaka.png',
      name: 'Dj Snake',
      songName: 'Magenta Riddim',
      isLiked: false,
      path: 'assets/audio/recommanded_music/magenta_riddim.mp3',
      rectangeImage: 'assets/images/recommanded_rectange/dj_snake.jfif',
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/friends.png',
      songName: 'Friends',
      name: 'Anne Marie',
      isLiked: true,
      path: 'assets/audio/recommanded_music/friends.mp3',
      rectangeImage: 'assets/images/recommanded_rectange/anne_marie.jfif',
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/alone.png',
      songName: 'Alone',
      name: 'Marshmello',
      isLiked: true,
      path: 'assets/audio/recommanded_music/alone.mp3',
      rectangeImage: 'assets/images/recommanded_rectange/marshmello.jfif',
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/new_rules.png',
      songName: 'New Rules',
      name: 'Dua Lipa',
      isLiked: false,
      path: 'assets/audio/recommanded_music/new_rules.mp3',
      rectangeImage: 'assets/images/recommanded_rectange/dua_lipa.jfif',
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/tailor.jfif',
      name: 'Taylor Swift',
      songName: 'You Belong With Me',
      isLiked: true,
      path: 'assets/audio/recommanded_music/belong_with_me.m4a',
      rectangeImage: 'assets/images/recommanded_rectange/taylor.jfif',
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/sheeran.jfif',
      name: 'Ed Sheeran',
      songName: 'Shape Of You Copy',
      isLiked: false,
      path: 'assets/audio/recommanded_music/shape_of_you.mp3',
      rectangeImage: 'assets/images/recommanded_rectange/sheeran.jfif',
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/maroon_5.jfif',
      name: 'Maroon 5',
      songName: 'Girls like you',
      isLiked: true,
      path: 'assets/audio/recommanded_music/girls_like_you.mp3',
      rectangeImage: 'assets/images/recommanded_rectange/maroon.jfif',
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/katy.jfif',
      name: 'Katy Perry',
      songName: 'Dark Horse Ft.juicy',
      isLiked: false,
      path: 'assets/audio/recommanded_music/dark_horse.mp3',
      rectangeImage: 'assets/images/recommanded_rectange/katy.jfif',
    ),
  ];
}
