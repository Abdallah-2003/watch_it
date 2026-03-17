import 'package:flutter/material.dart';
import 'package:watch_it/core/constant/app_images.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        AppImages.logo,
        width: 70,
        height: 70,
      ),
    );
  }
}