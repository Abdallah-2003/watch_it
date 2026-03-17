import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_it/features/home/data/model/video_model.dart';
import 'package:watch_it/features/home/data/repo/video_repo.dart';

part 'video_state.dart';

class VideoCubit extends Cubit<VideoState> {
  final VideoRepo videoRepo;
  VideoCubit(this.videoRepo) : super(VideoInitial());

  Future<void> getVideos(String id) async {
    emit(VideoLoading());
    final res = await videoRepo.getVideos(id);
    res.fold(
      (msg) => emit(VideoFailure(msg)),
      (videos) => emit(VideoSuccess(videos)),
    );
  }
}
