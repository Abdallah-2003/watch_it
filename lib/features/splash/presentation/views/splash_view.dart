import 'package:flutter/material.dart';
import 'package:watch_it/core/constant/app_colors.dart';
import 'package:watch_it/core/routing/routes.dart';
import 'package:watch_it/features/splash/presentation/views/widgets/splash_logo.dart';
import 'package:watch_it/features/splash/presentation/views/widgets/splash_sub_title.dart';
import 'package:watch_it/features/splash/presentation/views/widgets/splash_title.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, AppRoutes.layoutView);
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primaryDark,
              AppColors.secondaryDark,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SplashLogo(),
            SizedBox(height: 20),
            SplashTitle(),
            SizedBox(height: 10),
            SplashSubtitle(),
          ],
        ),
      ),
    );
  }
}