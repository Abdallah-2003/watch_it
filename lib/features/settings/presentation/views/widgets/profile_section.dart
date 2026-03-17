import 'package:flutter/material.dart';
import 'package:watch_it/core/constant/app_colors.dart';
import 'package:watch_it/core/constant/app_images.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(AppImages.profile),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Alex Johnson",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Premium Member",
              style: TextStyle(
                color: AppColors.lightText,
                fontSize: 12,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Edit Profile",
                style: TextStyle(color: AppColors.blueAccent),
              ),
            ),
          ],
        ),
      ],
    );
  }
}