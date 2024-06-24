import 'dart:async';
import 'package:just_audio/just_audio.dart';

class PlayMusic {
  Duration? duration;
  //final String path;
  AudioPlayer player = AudioPlayer();
  StreamController<Duration> durationNow = StreamController<Duration>();
  late Sink<Duration> input;
  late Stream<Duration> output;

  StreamController<Duration> durationEnd = StreamController<Duration>();
  late Sink<Duration> inputEnd;
  late Stream<Duration> outputEnd;

  StreamController<Duration> sliderVal = StreamController<Duration>();
  late Sink<Duration> inputSlider;
  late Stream<double> outputSlider;

  void setInputOutputSlider() {
    inputSlider = sliderVal.sink;
    outputSlider = sliderVal.stream.asBroadcastStream().map((event) =>
        event.inSeconds.toDouble() / duration!.inSeconds.toDouble() / 1.0);
  }

  void setInputOutput() {
    input = durationNow.sink;
    output = durationNow.stream.asBroadcastStream();
  }

  void setInputOutputEndDuration() {
    inputEnd = durationEnd.sink;
    outputEnd = durationEnd.stream.asBroadcastStream();
  }

  void onChangedSlider(double value) {
    Duration position = transferValuesOfSliderToDuration(value);
    player.seek(position);
  }

  Duration transferValuesOfSliderToDuration(double value) {
    double sliderNow = (value / 1.0) * duration!.inSeconds.toDouble();
    return Duration(seconds: sliderNow.toInt());
  }
  // PlayMusic.play(this.path);
  // static PlayMusic? instance;
  // factory PlayMusic(String path) {
  //   return instance ?? PlayMusic.play(path);
  // }

  Future<void> playSound(path) async {
    duration = await player.setAsset(path);
    inputEnd.add(duration!);
    player.positionStream.listen((event) {
      input.add(event);
      inputSlider.add((event));
    });
    await player.play();

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
