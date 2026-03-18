import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:watch_it/core/constant/app_colors.dart';
import 'package:watch_it/features/home/data/model/video_model.dart';


class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView({super.key, required this.videoModel});

  final VideoModel videoModel;

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.networkUrl(
              Uri.parse(widget.videoModel.videoUrl),
            )
            ..initialize().then((value) {
              setState(() {});
            }),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = flickManager.flickVideoManager!.videoPlayerController;
    return Scaffold(
      appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.white),
              title: Text(
                widget.videoModel.title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
      backgroundColor: AppColors.primaryDark,
      body: controller == null || !controller.value.isInitialized
          ? const Center(child: CircularProgressIndicator())
          : controller.value.hasError
          ? Center(child: Text('Oops! Please try again.'))
          : Center(
            child: AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: FlickVideoPlayer(flickManager: flickManager),
              ),
          ),
    );
  }
}
