class SingerModel {
  final String image;
  final String name;
  final String songName;
  final String path;
  final int index;
  final bool isRecently = true;

  SingerModel({
    required this.image,
    required this.index,
    required this.name,
    required this.songName,
    required this.path,
  });
}
