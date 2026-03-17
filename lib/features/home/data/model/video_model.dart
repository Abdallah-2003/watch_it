class VideoModel {

  final String id;
  final String title;
  final String desc;
  final String videoUrl;
  final String videoImageUrl;

  const VideoModel({
    required this.title,
    required this.id,
    required this.desc,
    required this.videoImageUrl,
    required this.videoUrl,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      id: json['id'],
      title: json['title'],
      desc: json['desc'],
      videoUrl: json['video_url'],
      videoImageUrl: json['video_image_url'],
    );
  }
}
