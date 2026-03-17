
import 'package:flutter/material.dart';
import 'package:watch_it/core/constant/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: AppColors.lightText,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}