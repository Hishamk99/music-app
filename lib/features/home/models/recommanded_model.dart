import 'package:just_audio/just_audio.dart';

class RecommandedModel {
  final String image;
  final String name;
  final String songName;
  final String path;
  final bool isLiked;

  RecommandedModel( {
    required this.image,
    required this.name,
  required  this.path,
    required this.songName,
    required this.isLiked,
  });
  Future<void> playSound() async{
    final player = AudioPlayer();
    player.setAsset(path);
    await player.play();
  }
}
