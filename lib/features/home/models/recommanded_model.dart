class RecommandedModel {
  final String image;
  final String rectangleImage;
  final String name;
  final String songName;
  final String path;
  final bool isLiked;
  final int index;
  final bool isRecently = false;

  RecommandedModel({
    required this.index,
    required this.rectangleImage,
    required this.image,
    required this.name,
    required this.path,
    required this.songName,
    required this.isLiked,
  });
}
