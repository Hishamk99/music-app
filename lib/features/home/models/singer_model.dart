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
  final player = AudioPlayer();
  Future<void> playSound() async {
    player.setAsset(path);
    await player.play();
  }

  Future<void> disposeSound() async {
    await player.dispose();
  }
}
