import 'package:flutter/material.dart';
import 'package:watch_it/core/constant/app_colors.dart';
import 'package:watch_it/features/home/presentation/views/widgets/video_item.dart';
import 'package:watch_it/videos_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardDark,
      appBar: AppBar(
        backgroundColor: AppColors.cardDark,
        title: const Text(
          'Mr. Mohamed El Saka',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 10),
            child: Icon(Icons.notifications, color: Colors.white,),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];

          return VideoItem(videoModel: video,);
        },
      ),
    );
  }
}
