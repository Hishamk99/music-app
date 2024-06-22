class SongDataModel {
  final bool isRecently;
  final int index;
  final String path;
  final String name;
  final String songName;
  final Duration duration;

  SongDataModel({
    required this.duration,
    required this.path,
    required this.name,
    required this.songName,
    required this.isRecently,
    required this.index,
  });
}
