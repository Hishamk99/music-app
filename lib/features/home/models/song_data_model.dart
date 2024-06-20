class SongDataModel {
  final bool isRecently;
  final int index;
  final String path;
  final String name;
  final String songName;

  SongDataModel({
    required this.path,
    required this.name,
    required this.songName,
    required this.isRecently,
    required this.index,
  });
}
