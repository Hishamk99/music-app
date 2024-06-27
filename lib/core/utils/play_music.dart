import 'dart:async';
import 'package:just_audio/just_audio.dart';

class PlayMusic {
  Duration? duration;
  AudioPlayer player = AudioPlayer();

  StreamController<bool> statusLoop = StreamController<bool>();
  late Sink<bool> loopInput;
  late Stream<bool> loopOutput;
  setStatusOfLoop() {
    loopInput = statusLoop.sink;
    loopOutput = statusLoop.stream.asBroadcastStream();
    loopInput.add(false);
  }

  Future<void> loopMusic() async {
    if (player.loopMode != LoopMode.one) {
      await player.setLoopMode(LoopMode.one);
      loopInput.add(true);
    } else {
      await player.setLoopMode(LoopMode.off);
      loopInput.add(false);
    }
  }

  StreamController<String> status = StreamController<String>();
  late Sink<String> onOffInput;
  late Stream<String> onOffOutput;
  setStatusOfOnControl() {
    onOffInput = status.sink;
    onOffOutput = status.stream.asBroadcastStream();
  }

  changeIcon(String path) async {
    onOffInput.add(path);
    await pauseAndPlaySound();
  }

  void onChangedSlider(double value) {
    Duration position = transferValuesOfSliderToDuration(value);
    player.seek(position);
  }

  Duration transferValuesOfSliderToDuration(double value) {
    double sliderNow = (value / 1.0) * duration!.inSeconds.toDouble();
    return Duration(seconds: sliderNow.toInt());
  }

  StreamController<Duration> durationEnd = StreamController<Duration>();
  late Sink<Duration> inputEnd;
  late Stream<Duration> outputEnd;
  void setInputOutputEndDuration() {
    inputEnd = durationEnd.sink;
    outputEnd = durationEnd.stream.asBroadcastStream();
  }

  StreamController<Duration> durationNow = StreamController<Duration>();
  late Sink<Duration> inputBeginNow;
  late Stream<Duration> outputBeginNow;
  void setInputOutput() {
    inputBeginNow = durationNow.sink;
    outputBeginNow = durationNow.stream.asBroadcastStream();
  }

  StreamController<Duration> sliderVal = StreamController<Duration>();
  late Sink<Duration> inputSlider;
  late Stream<double> outputSlider;

  void setInputOutputSlider() {
    inputSlider = sliderVal.sink;
    outputSlider = sliderVal.stream.asBroadcastStream().map((event) =>
        event.inSeconds.toDouble() / duration!.inSeconds.toDouble() / 1.0);
  }

  Future<void> playSound(path) async {
    duration = await player.setAsset(path);
    inputEnd.add(duration!);
    player.positionStream.listen((event) {
      inputBeginNow.add(event);
      inputSlider.add((event));
    });
    await player.play();
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
