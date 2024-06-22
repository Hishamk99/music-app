import 'package:just_audio/just_audio.dart';

class PlayMusic {
  //final String path;
  AudioPlayer player = AudioPlayer();

  // PlayMusic.play(this.path);
  // static PlayMusic? instance;
  // factory PlayMusic(String path) {
  //   return instance ?? PlayMusic.play(path);
  // }
  Duration? duration;
  Future<Duration?> playSound(path) async {
    duration = await player.setAsset(path);

    await player.play();
    return duration;
  }

  Future<void> pauseAndPlaySound() async {
    if (player.playing) {
      await player.pause();
    } else {
      await player.play();
    }
  }

  Future<void> disposeSound(path) async {
    await player.dispose();
  }
}
