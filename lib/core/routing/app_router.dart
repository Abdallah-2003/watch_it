import 'package:flutter/material.dart';
import 'package:watch_it/core/routing/routes.dart';
import 'package:watch_it/features/home/data/model/video_model.dart';
import 'package:watch_it/features/home/presentation/views/video_player_view.dart';
import 'package:watch_it/features/layout/presentation/views/layout_view.dart';
import 'package:watch_it/features/splash/presentation/views/splash_view.dart';
import 'package:watch_it/features/home/presentation/views/home_view.dart';



abstract class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeView:
        return MaterialPageRoute(
          builder: (context) {
            return const HomeView();
          },
        );

      case AppRoutes.splashView:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashView();
          },
        );

      case AppRoutes.layoutView:
        return MaterialPageRoute(
          builder: (context) {
            return const LayoutView();
          },
        );

      case AppRoutes.videoView:
      final videpModel = settings.arguments as VideoModel;
        return MaterialPageRoute(
          builder: (context) {
            return VideoPlayerView(video: videpModel);
          },
        );


      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No routes defined for ${settings.name}')),
          ),
        );
    }
  }
}
