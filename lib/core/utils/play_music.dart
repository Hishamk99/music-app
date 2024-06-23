import 'dart:async';
import 'package:just_audio/just_audio.dart';

class PlayMusic {
  //final String path;
  AudioPlayer player = AudioPlayer();
  StreamController<Duration> durationNow = StreamController<Duration>();
  late Sink<Duration> input;
  late Stream<Duration> output;

  StreamController<Duration> durationEnd = StreamController<Duration>();
  late Sink<Duration> inputEnd;
  late Stream<Duration> outputEnd;

  void setInputOutput() {
    input = durationNow.sink;
    output = durationNow.stream.asBroadcastStream();
  }
  

  void setInputOutputEndDuration() {
    inputEnd = durationEnd.sink;
    outputEnd = durationEnd.stream.asBroadcastStream();
  }

  // PlayMusic.play(this.path);
  // static PlayMusic? instance;
  // factory PlayMusic(String path) {
  //   return instance ?? PlayMusic.play(path);
  // }
  Duration? duration;
  Future<void> playSound(path) async {
    duration = await player.setAsset(path);
    inputEnd.add(duration!);
    await player.play();
    
    player.positionStream.listen((event) {
      input.add(event);
    });
    //return duration;
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
