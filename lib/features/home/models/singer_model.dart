import 'package:just_audio/just_audio.dart';

class SingerModel {
  final String image;
  final String name;
  final String songName;
  final String path;

  SingerModel({
    required this.image,
    required this.name,
    required this.songName,
    required this.path,
  });
  Future<void> playSound() async{
    final player = AudioPlayer();
    player.setAsset(path);
    await player.play();
  }
}
