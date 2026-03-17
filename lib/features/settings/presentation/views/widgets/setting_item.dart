import 'package:flutter/material.dart';
import 'package:watch_it/core/constant/app_colors.dart';

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  const SettingsItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.cardDark,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Icon(icon, color: AppColors.blueAccent),
        title: Text(
          title,
          style: const TextStyle(color: AppColors.white),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: const TextStyle(color: AppColors.lightText),
              )
            : null,
        trailing: const Icon(Icons.arrow_forward_ios,
            size: 16, color: AppColors.lightText),
        onTap: onTap,
      ),
    );
  }
}