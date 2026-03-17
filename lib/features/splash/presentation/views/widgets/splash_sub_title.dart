import 'package:flutter/material.dart';
import 'package:watch_it/core/constant/app_colors.dart';
import 'package:watch_it/core/constant/app_strings.dart';


class SplashSubtitle extends StatelessWidget {
  const SplashSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.subtitle,
      style: TextStyle(
        color: AppColors.lightText,
        fontSize: 14,
      ),
    );
  }
}