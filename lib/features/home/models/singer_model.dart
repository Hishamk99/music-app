import 'package:audioplayers/audioplayers.dart';

class SingerModel {
  final String image;
  final String name;
  final String songName;
  final String path;

  SingerModel( {
    required this.image,
    required this.name,
    required this.songName,
    required this.path,
  });
  void playSound()
  {
    final player = AudioPlayer();
    player.play(AssetSource(path));
  }
}
