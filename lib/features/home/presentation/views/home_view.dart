import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_it/core/constant/app_colors.dart';
import 'package:watch_it/core/routing/routes.dart';
import 'package:watch_it/features/home/data/repo/video_repo.dart';
import 'package:watch_it/features/home/presentation/cubit/video_cubit/video_cubit.dart';
import 'package:watch_it/features/home/presentation/views/widgets/video_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VideoCubit(VideoRepo())..getVideos(),
      child: BlocBuilder<VideoCubit, VideoState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.cardDark,
            appBar: AppBar(
              backgroundColor: AppColors.cardDark,
              centerTitle: false,
              titleSpacing: 0,
              title: Row(
                children: [
                  Text(
                    'Watch ',
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32
                    ),
                  ),
                  Text(
                    'It',
                    style: TextStyle(
                      color: AppColors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 32
                    ),
                  ),
                ],
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 10),
                  child: Icon(Icons.notifications, color: Colors.white),
                ),
              ],
            ),
            body: state is VideoLoading
                ? Center(child: CircularProgressIndicator())
                : state is VideoFailure
                ? Center(child: Text(state.msg))
                : state is VideoSuccess && state.videos.isEmpty
                ? Center(child: Text('No videos available', style: TextStyle(color: AppColors.white),))
                : state is VideoSuccess && state.videos.isNotEmpty
                ? ListView.builder(
                    itemCount: state.videos.length,
                    itemBuilder: (context, index) {
                      return VideoItem(videoModel: state.videos[index],
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.videoView, arguments: state.videos[index]);
                      },
                      );
                    },
                  )
                : SizedBox(),
          );
        },
      ),
    );
  }
}
