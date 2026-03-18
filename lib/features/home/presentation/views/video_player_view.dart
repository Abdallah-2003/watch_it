import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watch_it/core/constant/app_colors.dart';
import 'package:watch_it/features/home/data/model/video_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart'; 

class VideoPlayerView extends StatefulWidget {
  final VideoModel video;
  const VideoPlayerView({super.key, required this.video});

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.video.videoUrl,
      flags: const YoutubePlayerFlags(
        autoPlay: true, 
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.red,
        progressColors: const ProgressBarColors(
          playedColor: Colors.red,
          handleColor: Colors.redAccent,
        ),
      ),
      builder: (context, player) {
        return Scaffold(
          backgroundColor: AppColors.primaryDark,
          appBar: AppBar(
            backgroundColor: AppColors.primaryDark,
            iconTheme: const IconThemeData(color: Colors.white),
            title:  Text(
              widget.video.title,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          body: Center(child: player),
        );
      },
    );
  }
}