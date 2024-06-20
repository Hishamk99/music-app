import 'package:just_audio/just_audio.dart';

class PlayMusic {
  //final String path;
  AudioPlayer player = AudioPlayer();

  // PlayMusic.play(this.path);
  // static PlayMusic? instance;
  // factory PlayMusic(String path) {
  //   return instance ?? PlayMusic.play(path);
  // }

  Future<void> playSound(path) async {
    player.setAsset(path);
    await player.play();
  }

  Future<void> pauseAndPlaySound() async {
    if (player.playing) {
      await player.pause();
    } else {
      await player.play();
    }
  }

  Future<void> disposeSound() async {
    await player.dispose();
  }
}
