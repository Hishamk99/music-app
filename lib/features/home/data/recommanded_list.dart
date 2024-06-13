import 'package:music_app/features/home/models/recommanded_model.dart';

class RecommandedList {
  static List<RecommandedModel> recommandedList = [
    RecommandedModel(
      image: 'assets/images/recommanded/snaka.png',
      name: 'Dj Snake',
      songName: 'Magenta Riddim',
      isLiked: false,
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/friends.png',
      songName: 'Friends',
      name: 'Anne Marie',
      isLiked: true,
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/alone.png',
      songName: 'Alone',
      name: 'Marshmello',
      isLiked: true,
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/new_rules.png',
      songName: 'New Rules',
      name: 'Dua Lipa',
      isLiked: false,
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/tailor.jfif',
      name: 'Taylor Swift',
      songName: 'You Belong With Me',
      isLiked: true,
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/sheeran.jfif',
      name: 'Ed Sheeran',
      songName: 'Shape Of You Copy',
      isLiked: false,
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/maroon_5.jfif',
      name: 'Maroon 5',
      songName: 'Girls like you',
      isLiked: true,
    ),
    RecommandedModel(
      image: 'assets/images/recommanded/katy.jfif',
      name: 'Katy Perry',
      songName: 'Dark Horse Ft.juicy',
      isLiked: false,
    ),
  ];
}
